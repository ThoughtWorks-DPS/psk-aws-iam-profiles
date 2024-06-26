require 'awspec'

describe iam_group('PSKNonprodServiceAccountGroup') do
  it { should exist }
  it { should have_iam_user('PSKNonprodServiceAccount') }
end

describe iam_policy('PSKNonprodServiceAccountGroup') do
  it { should exist }
end

describe iam_group('PSKProdServiceAccountGroup') do
  it { should exist }
  it { should have_iam_user('PSKProdServiceAccount') }
end

describe iam_policy('PSKProdServiceAccountGroup') do
  it { should exist }
end