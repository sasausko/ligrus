# frozen_string_literal: true

require 'application_system_test_case'

class StrainsTest < ApplicationSystemTestCase
  setup do
    @strain = strains(:one)
  end

  test 'visiting the index' do
    visit strains_url
    assert_selector 'h1', text: 'Strains'
  end

  test 'should create strain' do
    visit strains_url
    click_on 'New strain'

    fill_in 'Aroma', with: @strain.aroma
    fill_in 'Cbd level', with: @strain.cbd_level
    fill_in 'Description', with: @strain.description
    fill_in 'Flovering period', with: @strain.flovering_period
    fill_in 'Genotype', with: @strain.genotype
    fill_in 'Name', with: @strain.name
    fill_in 'Terpenes', with: @strain.terpenes
    fill_in 'Thc level', with: @strain.thc_level
    click_on 'Create Strain'

    assert_text 'Strain was successfully created'
    click_on 'Back'
  end

  test 'should update Strain' do
    visit strain_url(@strain)
    click_on 'Edit this strain', match: :first

    fill_in 'Aroma', with: @strain.aroma
    fill_in 'Cbd level', with: @strain.cbd_level
    fill_in 'Description', with: @strain.description
    fill_in 'Flovering period', with: @strain.flovering_period
    fill_in 'Genotype', with: @strain.genotype
    fill_in 'Name', with: @strain.name
    fill_in 'Terpenes', with: @strain.terpenes
    fill_in 'Thc level', with: @strain.thc_level
    click_on 'Update Strain'

    assert_text 'Strain was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Strain' do
    visit strain_url(@strain)
    click_on 'Destroy this strain', match: :first

    assert_text 'Strain was successfully destroyed'
  end
end
