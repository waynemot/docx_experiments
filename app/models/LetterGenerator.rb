class LetterGenerator

  attribute :letter

  def set_letter(arg = nil)
    self.letter = arg
  end

  def build_letter
    open_template
  end

  def open_template
    tempfile = Tempfile.new("request")
    if self.letter.doc_template.document_template.attached?
      self.letter.doc_template.document_template.attachment.blob.open() do |f|
        FileUtils.copy_stream(f, tempfile)
      end
    end
    # At this point I'm ready to do var substitution into the text
    # from the doc_template.body section using @request values/appointment values
    # for the srequest application
    #
    # Once substitution is done on the body text, we can apply it to
    # the tempfile, reopening that tempfile using Docx
    tempfile.close(false)
    doc = Docx.open(tempfile.path)
  end
end