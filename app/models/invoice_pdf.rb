require "render_anywhere"
class InvoicePdf < ApplicationRecord
	include RenderAnywhere
 
  def initialize(estimate)
    @estimate = estimate
  end
 
  def to_pdf
    kit = PDFKit.new(as_html, page_size: 'A4')
    kit.to_file("#{Rails.root}/public/invoice.pdf")
  end
 
  def filename
    "Estimate #{estimate.id}.pdf"
  end
 
  private
 
    attr_reader :estimate
 
    def as_html
      render template: "estimates/pdf", layout: "estimate_pdf", locals: { estimate: estimate }
    end
end
