-- file: abstract-to-metadata.lua
local abstract_blocks = {}
local in_abstract = false
local block_buffer = {}

-- This function is called for each Pandoc block element
function Block(el)
    -- If we're in the abstract section and encounter a header, end the abstract
    if in_abstract and el.t == "Header" and el.level == 1 then
        in_abstract = false
    end
    
    -- If we're not in the abstract section and encounter the abstract header, start the abstract
    if not in_abstract and el.t == "Header" and el.level == 1 and pandoc.utils.stringify(el.content):lower() == "abstract" then
        in_abstract = true
        return {} -- Remove the abstract header
    end
    
    -- If we're in the abstract section, add the block to the abstract_blocks
    if in_abstract then
        table.insert(abstract_blocks, el)
        return {} -- Remove the block from the main content
    end

    -- If we're not in the abstract section, add the block to the block buffer to be returned later
    table.insert(block_buffer, el)
end

-- This function is called once for the whole document
function Pandoc(doc)
    -- Set the abstract in the document metadata if we have captured anything
    if #abstract_blocks > 0 then
        doc.meta.abstract = pandoc.MetaBlocks(abstract_blocks)
    end
    
    -- Return the modified document
    return pandoc.Pandoc(block_buffer, doc.meta)
end

return {
  {Block = Block, Pandoc = Pandoc}
}

