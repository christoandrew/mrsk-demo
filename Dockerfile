FROM localhost:5000/ruby:2.7

WORKDIR /opt/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["ruby", "server.rb"]
