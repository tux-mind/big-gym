class Api::TestimonialsController < ApplicationController
  def index
    @testimonials = Testimonial.all
  end
end
