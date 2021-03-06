# Getting Started

To start using this project locally, add the following lines to your Gemfile:

```
gem 'spina-inquiries', github: 'DigitalReflow/spina-inquiries'
```

Make sure you run the migration installer to get started.

```
rails g spina_inquiries:install
```

This should copy the migration file required to create the Spina::Inquiry model.

Restart your server and head over to '/admin/inquiries', you should see your plugin located below the in the side menu.

That's all it takes to get the plugin working :)

You will need to add the form to the consumer view and associated controller

```
module Spina
  class InquiriesController < Spina::ApplicationController

    def create
      @inquiry = Inquiry.new(inquiry_params)

      if @inquiry.save
        InquiryMailer.inquiry(@inquiry).deliver
      else
        render :failed
      end
    end

    private

    def inquiry_params
      params.require(:inquiry).permit(:archived, :email, :message, :name, :phone)
    end
  end
end
```

```
= simple_form_for Spina::Inquiry.new, remote: true do |f|
  = f.input :name
  = f.input :email
  = f.input :phone
  = f.input :message
  = f.submit
```

This project rocks and uses MIT-LICENSE.