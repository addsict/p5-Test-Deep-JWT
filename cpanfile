requires 'perl', '5.008001';
requires 'JSON::WebToken', '0.10';
requires 'Test::Deep';
requires 'Test::Deep::Cmp';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

