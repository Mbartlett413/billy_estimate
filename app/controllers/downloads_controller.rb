class DownloadsController < ApplicationController
 
  def show
    respond_to do |format|
      format.pdf { send_invoice_pdf }
 
      if Rails.env.development?
        format.html { render_sample_html }
      end
    end
  end
 
  private
 
  def estimate
    Estimate.find(params[:estimate_id])
  end
 
  def estimate_pdf
    InvoicePdf.new(estimate)
  end
 
  def send_invoice_pdf
    send_file estimate_pdf.to_pdf,
      filename: estimate_pdf.filename,
      type: "application/pdf",
      disposition: "inline"
  end
 
  def render_sample_html
    render template: "estimates/pdf", layout: "estimate_pdf", locals: { estimate: estimate }
  end
end