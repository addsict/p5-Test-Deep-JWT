use strict;
use Test::More;
use Test::Deep;
use Test::Deep::JWT;

cmp_deeply 'eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJzdWIiOiIxMjM0NTY3ODkwIiwiZXhwIjoxNDMzNDM0NTk3fQ.', jwt(+{
    sub => '1234567890',
    exp => 1433434597,
});

done_testing;

