class DocxLetter < Letter

  has_one_attached :document

  def initialize(attributes = nil)
    super
  end

  def open_template
    if self.document && self.document.attached?
      doc_file = self.document.file
    else
      if self.doc_template && self.doc_template.attached?
        temp_file = Tempfile.new("sample")
        FileUtils.cp(self.doc_template.document_template.path, temp_file.path)
      else
        self.errors.add(:document, "No template attached.")
      end
    end
  end
end
