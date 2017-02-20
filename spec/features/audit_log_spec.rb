require 'rails_helper'

describe 'AuditLog Feature' do
  let(:audit_log) { FactoryGirl.create(:audit_log) }

  describe 'index' do
      
    before do
        admin_user = FactoryGirl.create(:admin_user)
        login_as(admin_user, :scope => :user)
    end
    it 'has an index page that can be reached' do
      visit audit_logs_path
      expect(page.status_code).to eq(200)
    end
    
    it 'renders audit log content' do
        FactoryGirl.create(:audit_log)
        visit audit_logs_path
        expect(page).to have_content(/SNOW/)
    end
  end
end