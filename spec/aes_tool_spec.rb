RSpec.describe AesTool do
  it "has a version number" do
    expect(AesTool::VERSION).not_to be nil
  end

  # it "does something useful" do
  #   expect(true).to eq(true)
  # end

  it "plain_convert_cipher" do
    msg = "abcdef"
    pwd = "123456"
    cipher = AesCore.encrypt(msg, pwd)
    expect(msg).to eq(AesCore.decrypt(cipher, pwd))
  end
end
