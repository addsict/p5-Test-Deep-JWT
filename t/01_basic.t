use strict;
use Test::More;
use Test::Deep;
use Test::Deep::JWT;

subtest 'claims only' => sub {
    cmp_deeply 'eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJzdWIiOiIxMjM0NTY3ODkwIiwiZXhwIjoxNDMzNDM0NTk3fQ.', jwt(+{
        sub => '1234567890',
        exp => 1433434597,
    });
};

subtest 'claims and header' => sub {
    cmp_deeply 'eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJzdWIiOiIxMjM0NTY3ODkwIiwiZXhwIjoxNDMzNDM0NTk3fQ.', jwt(+{
        sub => '1234567890',
        exp => 1433434597,
    }, +{
        alg => 'none',
        typ => 'JWT',
    });
};

done_testing;

