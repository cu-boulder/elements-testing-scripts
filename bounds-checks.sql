/****** User queries  ******/
SELECT COUNT(*) AS NUM_USERS
  FROM [dbo].[User] u;

SELECT COUNT(*) AS NUM_USERS_INACTIVE
  FROM [dbo].[User] u
 WHERE u.[Is Current Staff] = 0;

SELECT COUNT(*) AS NUM_USERS_ACTIVE
  FROM [dbo].[User] u
 WHERE u.[Is Current Staff] = 1;

/****** Group queries  ******/
SELECT COUNT(*) AS NUM_GROUPS
  FROM [dbo].[Group] g;

SELECT COUNT(*) AS NUM_GROUP_USER_MEMEBERSHIP
  FROM [dbo].[Group User Membership] g;

/****** Role queries  ******/
SELECT DISTINCT(Role)
  FROM [dbo].[Group User Role] r;

SELECT COUNT([User ID]) AS NUM_USERS, [Role]
  FROM [dbo].[Group User Role] r
 GROUP BY [Role];

/****** Publication queries  ******/
SELECT COUNT(*) AS NUM_PUBS
  FROM [dbo].[Publication] p;

SELECT COUNT(*) AS NUM_PENDING_PUBS
  FROM [dbo].[Pending Publication] p;

SELECT COUNT(*) AS NUM_PUB_USER_RELATIONSHIPS
FROM [dbo].[Publication User Relationship] p;

SELECT COUNT(*) AS NUM_DECLINED_PUBSS
FROM [dbo].[Declined Publication] p;

/****** Delegate queries  ******/
SELECT COUNT(*) AS NUM_DELEGATES
  FROM [dbo].[Delegate] d;

/****** User defaulty search term queries  ******/
SELECT COUNT(*) AS NUM_USER_SEARCH_TERM_DEFAULTS
  FROM [dbo].[User Search Term Defaults] u;
