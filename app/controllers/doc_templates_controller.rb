class DocTemplatesController < ApplicationController
  before_action :set_doc_template, only: %i[ show edit update destroy ]

  # GET /doc_templates or /doc_templates.json
  def index
    @doc_templates = DocTemplate.all
  end

  # GET /doc_templates/1 or /doc_templates/1.json
  def show
  end

  # GET /doc_templates/new
  def new
    @doc_template = DocTemplate.new
  end

  # GET /doc_templates/1/edit
  def edit
  end

  # POST /doc_templates or /doc_templates.json
  def create
    @doc_template = DocTemplate.new(doc_template_params)

    respond_to do |format|
      if @doc_template.save
        format.html { redirect_to doc_template_url(@doc_template), notice: "Doc template was successfully created." }
        format.json { render :show, status: :created, location: @doc_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doc_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doc_templates/1 or /doc_templates/1.json
  def update
    respond_to do |format|
      if @doc_template.update(doc_template_params)
        format.html { redirect_to doc_template_url(@doc_template), notice: "Doc template was successfully updated." }
        format.json { render :show, status: :ok, location: @doc_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doc_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_templates/1 or /doc_templates/1.json
  def destroy
    @doc_template.destroy

    respond_to do |format|
      format.html { redirect_to doc_templates_url, notice: "Doc template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_template
      @doc_template = DocTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doc_template_params
      params.require(:doc_template).permit(:name, :variable_hash, :document_template)
    end
end
