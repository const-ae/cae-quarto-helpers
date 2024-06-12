return {
    ['fixme'] = function(args, kwargs, meta)
      if quarto.doc.is_format("pdf") then
        return pandoc.RawBlock('tex', '{\\color{red}FIXME}')
      elseif quarto.doc.is_format("html") then
        return pandoc.RawBlock('html', '<span style="color:red">FIXME</span>')
      elseif quarto.doc.is_format("docx") then
        -- This is very hacky and does not work if the shortcode is inside a paragraph
        -- return pandoc.RawBlock("openxml", '<w:p><w:r w:rsidRPr="005D5CCE"><w:rPr><w:color w:val="FF0000"/></w:rPr><w:t>FIXME!!</w:t></w:r></w:p>')
        return pandoc.Emph("FIXME")
      else
        return pandoc.Str("FIXME")
      end
    end
  }
  