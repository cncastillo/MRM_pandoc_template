function Link(elem)
    -- Check if the link points to a file with a .md extension
    if string.sub(elem.target, -3) == ".md" then
        -- Convert the entire content of the link to a sequence of inlines
        return elem.content
    else
        -- Return the link as is
        return elem
    end
end

