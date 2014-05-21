SELECT
  substr(null, 1), substr(null, 1, 1),
  substr('ABC', null), substr('ABC', null, 1),
  substr('ABC', 1, null)
FROM src LIMIT 1;

SELECT
  substr('ABC', 1, 0), substr('ABC', 1, -1), substr('ABC', 2, -100),
  substr('ABC', 4), substr('ABC', 4, 100),
  substr('ABC', -4), substr('ABC', -4, 100),
  substr('ABC', 100), substr('ABC', 100, 100),
  substr('ABC', -100), substr('ABC', -100, 100),
  substr('ABC', 2147483647), substr('ABC', 2147483647, 2147483647)
FROM src LIMIT 1;

SELECT
  substr('ABCDEFG', 3, 4), substr('ABCDEFG', -5, 4),
  substr('ABCDEFG', 3), substr('ABCDEFG', -5),
  substr('ABC', 0), substr('ABC', 1), substr('ABC', 2), substr('ABC', 3),
  substr('ABC', 1, 2147483647), substr('ABC', 2, 2147483647),
  substr('A', 0), substr('A', 1), substr('A', -1)
FROM src LIMIT 1;

SELECT
  substr('ABC', 0, 1), substr('ABC', 0, 2), substr('ABC', 0, 3), substr('ABC', 0, 4),
  substr('ABC', 1, 1), substr('ABC', 1, 2), substr('ABC', 1, 3), substr('ABC', 1, 4),
  substr('ABC', 2, 1), substr('ABC', 2, 2), substr('ABC', 2, 3), substr('ABC', 2, 4),
  substr('ABC', 3, 1), substr('ABC', 3, 2), substr('ABC', 3, 3), substr('ABC', 3, 4),
  substr('ABC', 4, 1)
FROM src LIMIT 1;

SELECT
  substr('ABC', -1, 1), substr('ABC', -1, 2), substr('ABC', -1, 3), substr('ABC', -1, 4),
  substr('ABC', -2, 1), substr('ABC', -2, 2), substr('ABC', -2, 3), substr('ABC', -2, 4),
  substr('ABC', -3, 1), substr('ABC', -3, 2), substr('ABC', -3, 3), substr('ABC', -3, 4),
  substr('ABC', -4, 1)
FROM src LIMIT 1;

-- substring() is a synonim of substr(), so just perform some basic tests
SELECT
  substring('ABCDEFG', 3, 4), substring('ABCDEFG', -5, 4),
  substring('ABCDEFG', 3), substring('ABCDEFG', -5),
  substring('ABC', 0), substring('ABC', 1), substring('ABC', 2), substring('ABC', 3),
  substring('ABC', 1, 2147483647), substring('ABC', 2, 2147483647),
  substring('A', 0), substring('A', 1), substring('A', -1)
FROM src LIMIT 1;