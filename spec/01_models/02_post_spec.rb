describe Post do
  context 'Post validations' do
    it "post is valid" do
      expect(Post.create(post_name: "hi", post_content: "hello")).to be_valid
    end

    it "is invalid with no name" do
      expect(Post.create(post_name: nil, post_content: "i have no name")).to_not be_valid
    end

    it "is invalid with no content" do
      expect(Post.create(post_name: "Name", post_content: nil)).to_not be_valid
    end
  end

  context 'Post relationship to User and Tag' do
    let(:user) { User.create(name: 'Crookshanks') }
    let(:tag1) { Tag.create(name: 'adorable') }
    let(:tag2) { Tag.create(name: 'feline') }
    let(:post) { Post.create(user_id: user.id, post_name: 'post', post_content: 'content') }

    before do
      PostTag.create(tag_id: tag1.id, post_id: post.id)
      PostTag.create(tag_id: tag2.id, post_id: post.id)
    end

    it 'belongs to a user' do
      expect(post.user).to eq(user)
    end

    it 'has many tags' do
      expect(post.tags.count).to eq(2)
    end
  end

end
