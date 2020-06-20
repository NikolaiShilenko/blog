-- SQL Manager Lite for PostgreSQL 6.1.2.53864
-- ---------------------------------------
-- Host      : localhost
-- Database  : blog
-- Version   : PostgreSQL 9.5.22, compiled by Visual C++ build 1800, 64-bit



SET check_function_bodies = false;
--
-- Structure for table category (OID = 16403) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.category (
    id integer NOT NULL,
    name varchar(20) NOT NULL,
    url varchar(20) NOT NULL,
    articles integer DEFAULT 0 NOT NULL
)
WITH (oids = false);
--
-- Structure for table article (OID = 16411) : 
--
CREATE TABLE public.article (
    id bigint NOT NULL,
    title varchar(255) NOT NULL,
    url varchar(255) NOT NULL,
    logo varchar(255) NOT NULL,
    "desc" varchar(255) NOT NULL,
    content text NOT NULL,
    id_category integer NOT NULL,
    created timestamp(0) without time zone DEFAULT now(),
    views bigint DEFAULT 0 NOT NULL,
    comments integer DEFAULT 0 NOT NULL
)
WITH (oids = false);
--
-- Structure for table account (OID = 16422) : 
--
CREATE TABLE public.account (
    id bigint NOT NULL,
    email varchar(100) NOT NULL,
    name varchar(30) NOT NULL,
    avatar varchar(255),
    created timestamp(0) without time zone DEFAULT now() NOT NULL
)
WITH (oids = false);
--
-- Structure for table comment (OID = 16430) : 
--
CREATE TABLE public.comment (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    id_article bigint NOT NULL,
    content text NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence comment_seq (OID = 16439) : 
--
CREATE SEQUENCE public.comment_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence account_seq (OID = 16441) : 
--
CREATE SEQUENCE public.account_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Data for table public.category (OID = 16403) (LIMIT 0,10)
--
INSERT INTO category (id, name, url, articles)
VALUES (1, 'Massa', '/massa', 1);

INSERT INTO category (id, name, url, articles)
VALUES (2, 'Montes', '/montes', 1);

INSERT INTO category (id, name, url, articles)
VALUES (3, 'Felis', '/felis', 1);

INSERT INTO category (id, name, url, articles)
VALUES (4, 'Dolor', '/dolor', 18);

INSERT INTO category (id, name, url, articles)
VALUES (5, 'Rutrum', '/rutrum', 7);

INSERT INTO category (id, name, url, articles)
VALUES (6, 'Quam', '/quam', 2);

INSERT INTO category (id, name, url, articles)
VALUES (7, 'Purus', '/purus', 2);

INSERT INTO category (id, name, url, articles)
VALUES (8, 'Ridiculus', '/ridiculus', 2);

INSERT INTO category (id, name, url, articles)
VALUES (9, 'Auctor', '/auctor', 2);

INSERT INTO category (id, name, url, articles)
VALUES (10, 'Egestas', '/egestas', 1);

--
-- Data for table public.article (OID = 16411) (LIMIT 0,37)
--
INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (200, 'Duis leo.', '/duis-leo', '/media/nature/0828855f-beb9-4a1b-8297-71a3f55954bd.jpg', '<p>Duis leo. Duis leo. Duis leo.</p>', '<p>Duis leo. Duis leo. Duis leo.</p>
<p>Nunc interdum lacus sit amet orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Pellentesque posuere. Praesent blandit laoreet nibh. Duis leo.</p>
<p>Praesent blandit laoreet nibh. Pellentesque posuere. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Proin faucibus arcu quis ante. Nunc interdum lacus sit amet orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<img class="float-center" src="/media/nature/71b1782f-8867-43a3-b362-2a26a505de85.jpg" alt="600x240" /><br/>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Proin faucibus arcu quis ante. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque posuere.</p>
<p>Pellentesque posuere. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc interdum lacus sit amet orci. Duis leo. Praesent blandit laoreet nibh. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Proin faucibus arcu quis ante. Praesent blandit laoreet nibh. Pellentesque posuere. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Nunc interdum lacus sit amet orci. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Duis leo.</p>
<p>Proin faucibus arcu quis ante. Praesent blandit laoreet nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Pellentesque posuere. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Duis leo. Nunc interdum lacus sit amet orci. Praesent blandit laoreet nibh. Proin faucibus arcu quis ante. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis leo. Praesent blandit laoreet nibh. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Nunc interdum lacus sit amet orci. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<p>Proin faucibus arcu quis ante. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Duis leo. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Pellentesque posuere. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Proin faucibus arcu quis ante. Nunc interdum lacus sit amet orci. Duis leo. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque posuere. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Praesent blandit laoreet nibh.</p>
<p>Pellentesque posuere. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent blandit laoreet nibh. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Proin faucibus arcu quis ante. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Duis leo.</p>
<p>Pellentesque posuere. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Praesent blandit laoreet nibh. Proin faucibus arcu quis ante. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
<img class="float-center" src="/media/nature/d32836da-20a6-45a0-86a8-c473c83126cc.jpg" alt="200x260" /><br/>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc interdum lacus sit amet orci.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc interdum lacus sit amet orci. Praesent blandit laoreet nibh. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Pellentesque posuere. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Proin faucibus arcu quis ante. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Proin faucibus arcu quis ante. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis leo. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Pellentesque posuere. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Nunc interdum lacus sit amet orci. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Duis leo. Proin faucibus arcu quis ante. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque posuere.</p>
<p>Pellentesque posuere. Duis leo. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Proin faucibus arcu quis ante. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Praesent blandit laoreet nibh. Nunc interdum lacus sit amet orci.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Duis leo. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Proin faucibus arcu quis ante. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis leo. Proin faucibus arcu quis ante. Pellentesque posuere. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
<p>Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Pellentesque posuere. Duis leo. Nunc interdum lacus sit amet orci. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Praesent blandit laoreet nibh. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nunc interdum lacus sit amet orci. Pellentesque posuere.</p>
<img class="float-center" src="/media/nature/e82f9a10-438d-4ab2-891b-1c13fb59d2b9.jpg" alt="500x140" /><br/>
<p>Praesent blandit laoreet nibh.</p>
<p>Duis leo. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque posuere. Praesent blandit laoreet nibh. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
', 6, '2019-12-20 14:35:59', 437, 6);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (201, 'Phasellus blandit leo ut odio.', '/phasellus-blandit-leo-ut-odio', '/media/nature/930a4b9a-240c-4122-8f90-962aa199cf83.jpg', '<p>Phasellus blandit leo ut odio. Phasellus blandit leo ut odio. Phasellus blandit leo ut odio.</p>', '<p>Phasellus blandit leo ut odio. Phasellus blandit leo ut odio. Phasellus blandit leo ut odio.</p>
<p>In hac habitasse platea dictumst. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Phasellus blandit leo ut odio. Donec sodales sagittis magna.</p>
<p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>
<p></p>
<p>Duis leo. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
<p>Duis leo. Sed in libero ut nibh placerat accumsan. Donec sodales sagittis magna. Phasellus blandit leo ut odio. Phasellus dolor. In hac habitasse platea dictumst. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
<p>Donec sodales sagittis magna. Sed in libero ut nibh placerat accumsan.</p>
<p>Morbi mattis ullamcorper velit. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Phasellus blandit leo ut odio.</p>
<p>Phasellus blandit leo ut odio. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Morbi mattis ullamcorper velit. Sed in libero ut nibh placerat accumsan. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Duis leo. In hac habitasse platea dictumst. Donec sodales sagittis magna.</p>
<p>Duis leo. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Phasellus blandit leo ut odio. Morbi mattis ullamcorper velit. In hac habitasse platea dictumst.</p>
', 10, '2020-05-24 00:02:59', 5454, 5);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (202, 'Sed lectus.', '/sed-lectus', '/media/nature/20d8a9ac-b1d8-4573-8720-8cde253d712b.jpg', '<p>Sed lectus.</p>', '<p>Sed lectus.</p>
<p></p>
<img class="float-center" src="/media/nature/317d23dc-002b-4821-b76c-7e0b2e598ebb.jpg" alt="600x280" /><br/>
<p>Nullam dictum felis eu pede mollis pretium.</p>
<p>Praesent nonummy mi in odio. Phasellus ullamcorper ipsum rutrum nunc. Praesent nec nisl a purus blandit viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec mollis hendrerit risus. Fusce a quam. In consectetuer turpis ut velit. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. In turpis. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Nullam dictum felis eu pede mollis pretium. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent congue erat at massa. Etiam ut purus mattis mauris sodales aliquam. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Sed lectus. Aenean imperdiet. Quisque id mi.</p>
', 6, '2020-05-21 00:14:00', 5668, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (203, 'Aenean vulputate eleifend tellus.', '/aenean-vulputate-eleifend-tellus', '/media/animals/b85425b5-11ef-40c7-91ec-0333f6b92dc3.jpg', '<p>Aenean vulputate eleifend tellus. Aenean vulputate eleifend tellus.</p>', '<p>Aenean vulputate eleifend tellus. Aenean vulputate eleifend tellus.</p>
<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Praesent congue erat at massa. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Pellentesque ut neque. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Ut varius tincidunt libero. Aenean vulputate eleifend tellus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean viverra rhoncus pede. Cras ultricies mi eu turpis hendrerit fringilla. In auctor lobortis lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Maecenas vestibulum mollis diam. Praesent congue erat at massa. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Nunc nonummy metus. Nunc interdum lacus sit amet orci. Praesent nonummy mi in odio. Pellentesque ut neque. Ut varius tincidunt libero.</p>
<p>In auctor lobortis lacus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Maecenas vestibulum mollis diam. Phasellus a est. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent nonummy mi in odio. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est.</p>
<p>Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Cras ultricies mi eu turpis hendrerit fringilla. In auctor lobortis lacus. Pellentesque ut neque. Praesent congue erat at massa. Praesent nonummy mi in odio. Ut varius tincidunt libero. Maecenas vestibulum mollis diam. Nunc interdum lacus sit amet orci. Aenean viverra rhoncus pede. Nunc nonummy metus. Phasellus a est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean vulputate eleifend tellus.</p>
<p>Ut varius tincidunt libero. Cras ultricies mi eu turpis hendrerit fringilla. Aenean vulputate eleifend tellus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Maecenas vestibulum mollis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus a est.</p>
<img class="float-center" src="/media/animals/b990ef0d-7aec-423f-9b8c-21c8355aa32b.jpg" alt="500x240" /><br/>
<p>Pellentesque ut neque. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Cras ultricies mi eu turpis hendrerit fringilla. Maecenas vestibulum mollis diam. Nunc nonummy metus. Aenean vulputate eleifend tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Ut varius tincidunt libero. Phasellus a est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Nunc interdum lacus sit amet orci.</p>
<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Ut varius tincidunt libero. Pellentesque ut neque.</p>
<p>Aenean viverra rhoncus pede. Maecenas vestibulum mollis diam. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Nunc interdum lacus sit amet orci. Praesent congue erat at massa. Nunc nonummy metus. Pellentesque ut neque. Phasellus a est.</p>
<p>Ut varius tincidunt libero. Maecenas vestibulum mollis diam. Nunc interdum lacus sit amet orci. Pellentesque ut neque. Cras ultricies mi eu turpis hendrerit fringilla. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent nonummy mi in odio. In auctor lobortis lacus. Aenean vulputate eleifend tellus. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Praesent congue erat at massa. Phasellus a est. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.</p>
<p>Ut varius tincidunt libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. In auctor lobortis lacus.</p>
<p>Praesent nonummy mi in odio. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Praesent congue erat at massa. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Phasellus a est. Nunc nonummy metus. Ut varius tincidunt libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras ultricies mi eu turpis hendrerit fringilla. In auctor lobortis lacus. Nunc interdum lacus sit amet orci. Maecenas vestibulum mollis diam. Aenean viverra rhoncus pede. Aenean vulputate eleifend tellus.</p>
<p>Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Cras ultricies mi eu turpis hendrerit fringilla. Aenean viverra rhoncus pede. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Phasellus a est. Praesent congue erat at massa. Pellentesque ut neque. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nunc interdum lacus sit amet orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Praesent nonummy mi in odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In auctor lobortis lacus. Nunc nonummy metus. Maecenas vestibulum mollis diam.</p>
', 4, '2019-12-29 18:03:00', 2789, 3);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (204, 'Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.', '/aenean-tellus-metus-bibendum-sed-posuere-ac-mattis-non-nunc', '/media/animals/7dd5cdfe-a48e-41f0-bddf-ae6b834facbb.jpg', '<p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, matti</p>', '<p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Aenean tellus metus, bibendum sed, posuere ac, matti</p>
<p></p>
<p>Duis leo. Fusce vel dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus gravida semper nisi.</p>
<p>Maecenas vestibulum mollis diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce convallis metus id felis luctus adipiscing. Donec vitae sapien ut libero venenatis faucibus. Phasellus nec sem in justo pellentesque facilisis. Nunc nulla. Duis leo. Nullam sagittis. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.</p>
<img class="float-center" src="/media/animals/0e4fd0fe-c07d-4eb1-b9c9-50de9fd11886.jpg" alt="500x220" /><br/>
<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus gravida semper nisi. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Fusce convallis metus id felis luctus adipiscing. Duis leo. Fusce vel dui.</p>
<p>Donec vitae sapien ut libero venenatis faucibus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nunc nulla. Fusce vel dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Fusce convallis metus id felis luctus adipiscing. Phasellus nec sem in justo pellentesque facilisis. Phasellus gravida semper nisi.</p>
<p>Fusce convallis metus id felis luctus adipiscing. Fusce vel dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus nec sem in justo pellentesque facilisis. Maecenas vestibulum mollis diam. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Duis leo. Nullam sagittis. Nunc nulla.</p>
<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus gravida semper nisi. Fusce convallis metus id felis luctus adipiscing. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Duis leo. Phasellus nec sem in justo pellentesque facilisis. Maecenas vestibulum mollis diam. Nunc nulla. Fusce vel dui. Nullam sagittis.</p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nunc nulla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Nullam sagittis. Phasellus gravida semper nisi. Fusce vel dui. Donec vitae sapien ut libero venenatis faucibus. Fusce convallis metus id felis luctus adipiscing.</p>
<p>Fusce vel dui. Phasellus gravida semper nisi. Fusce convallis metus id felis luctus adipiscing.</p>
<p>Phasellus nec sem in justo pellentesque facilisis.</p>
<p>Nunc nulla. Phasellus gravida semper nisi. Fusce convallis metus id felis luctus adipiscing. Donec vitae sapien ut libero venenatis faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Maecenas vestibulum mollis diam. Duis leo. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Phasellus nec sem in justo pellentesque facilisis. Fusce vel dui.</p>
<p>Nullam sagittis. Phasellus nec sem in justo pellentesque facilisis. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Maecenas vestibulum mollis diam. Duis leo. Nunc nulla.</p>
<img class="float-center" src="/media/animals/420c26c1-a75f-42e4-937b-b51a1fe82538.jpg" alt="600x140" /><br/>
<p>Fusce convallis metus id felis luctus adipiscing. Duis leo. Fusce vel dui. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Phasellus nec sem in justo pellentesque facilisis. Nullam sagittis. Donec vitae sapien ut libero venenatis faucibus. Nunc nulla.</p>
<p>Fusce convallis metus id felis luctus adipiscing.</p>
<p>Nullam sagittis. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
', 5, '2019-12-16 21:09:01', 2423, 0);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (217, 'Quisque id mi.', '/quisque-id-mi', '/media/nature/c15d3685-0448-46ba-b20a-d111c69cf41d.jpg', '<p>Quisque id mi. Quisque id mi.</p>', '<p>Quisque id mi. Quisque id mi.</p>
<p>Praesent turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui.</p>
<p>Fusce vel dui. Praesent nec nisl a purus blandit viverra. Donec vitae sapien ut libero venenatis faucibus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Etiam ultricies nisi vel augue. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>
<img class="float-center" src="/media/nature/f0165913-0ee9-4f59-99ba-e3f07752681f.jpg" alt="600x160" /><br/>
<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Morbi mattis ullamcorper velit. Etiam ultricies nisi vel augue. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Quisque id mi. Donec vitae sapien ut libero venenatis faucibus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Phasellus magna. Praesent turpis. Fusce vel dui. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Praesent nec nisl a purus blandit viverra. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Fusce vel dui. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Donec vitae sapien ut libero venenatis faucibus. Etiam ultricies nisi vel augue. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Praesent turpis. Phasellus magna. Morbi mattis ullamcorper velit. Quisque id mi.</p>
<p>Morbi mattis ullamcorper velit. Praesent nec nisl a purus blandit viverra. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Etiam ultricies nisi vel augue. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque id mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce vel dui. Phasellus magna. Praesent turpis. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo.</p>
<p>Etiam ultricies nisi vel augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent nec nisl a purus blandit viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Praesent turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Donec vitae sapien ut libero venenatis faucibus.</p>
<p>Etiam ultricies nisi vel augue. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Morbi mattis ullamcorper velit. Quisque id mi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Praesent turpis. Fusce vel dui. Etiam ultricies nisi vel augue. Praesent nec nisl a purus blandit viverra. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Donec vitae sapien ut libero venenatis faucibus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Quisque id mi. Morbi mattis ullamcorper velit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce vel dui. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Etiam ultricies nisi vel augue. Praesent turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Praesent nec nisl a purus blandit viverra. Phasellus magna. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vitae sapien ut libero venenatis faucibus. Quisque id mi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus.</p>
<p>Donec vitae sapien ut libero venenatis faucibus.</p>
<p>Praesent nec nisl a purus blandit viverra. Donec vitae sapien ut libero venenatis faucibus. Morbi mattis ullamcorper velit. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent turpis. Phasellus magna. Fusce vel dui. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p></p>
<img class="float-center" src="/media/nature/eec09a97-9c05-45f5-b46b-4f7a2d1a964d.jpg" alt="200x280" /><br/>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Praesent turpis. Fusce vel dui.</p>
<p>Praesent nec nisl a purus blandit viverra. Etiam ultricies nisi vel augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vitae sapien ut libero venenatis faucibus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</p>
<p></p>
<p>Praesent turpis. Quisque id mi. Praesent nec nisl a purus blandit viverra. Morbi mattis ullamcorper velit. Phasellus magna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Donec vitae sapien ut libero venenatis faucibus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam ultricies nisi vel augue. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>
<p>Fusce vel dui. Phasellus magna. Praesent turpis. Etiam ultricies nisi vel augue.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus magna. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Donec vitae sapien ut libero venenatis faucibus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id mi. Fusce vel dui. Morbi mattis ullamcorper velit. Praesent nec nisl a purus blandit viverra. Etiam ultricies nisi vel augue.</p>
<img class="float-center" src="/media/nature/5c5f83a8-7277-4dc5-b238-2f0e66eb6f36.jpg" alt="300x180" /><br/>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Etiam ultricies nisi vel augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Etiam ultricies nisi vel augue. Quisque id mi. Praesent turpis. Praesent nec nisl a purus blandit viverra. Morbi mattis ullamcorper velit. Donec vitae sapien ut libero venenatis faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id mi. Etiam ultricies nisi vel augue. Donec vitae sapien ut libero venenatis faucibus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Phasellus magna. Praesent nec nisl a purus blandit viverra. Fusce vel dui.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Donec vitae sapien ut libero venenatis faucibus. Praesent turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque id mi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Etiam ultricies nisi vel augue. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Phasellus magna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Morbi mattis ullamcorper velit. Praesent nec nisl a purus blandit viverra.</p>
<p>Quisque id mi.</p>
<p>Phasellus magna. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent nec nisl a purus blandit viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vitae sapien ut libero venenatis faucibus. Fusce vel dui. Etiam ultricies nisi vel augue. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Quisque id mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>
<p>Phasellus magna. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce vel dui. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Praesent turpis. Etiam ultricies nisi vel augue. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Quisque id mi. Donec vitae sapien ut libero venenatis faucibus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Morbi mattis ullamcorper velit.</p>
<p>Fusce vel dui. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Quisque id mi. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Morbi mattis ullamcorper velit. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Praesent turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vitae sapien ut libero venenatis faucibus. Etiam ultricies nisi vel augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent nec nisl a purus blandit viverra. Fusce vel dui.</p>
<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus magna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus magna. Morbi mattis ullamcorper velit. Fusce vel dui. Etiam ultricies nisi vel augue. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Praesent nec nisl a purus blandit viverra. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</p>
<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Praesent turpis. Praesent nec nisl a purus blandit viverra. Etiam ultricies nisi vel augue.</p>
<p></p>
<p>Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo.</p>
<p>Donec vitae sapien ut libero venenatis faucibus. Morbi mattis ullamcorper velit. Fusce vel dui. Phasellus magna. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Quisque id mi. Praesent nec nisl a purus blandit viverra. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
<img class="float-center" src="/media/nature/37b95235-4056-4635-a70c-a710b655b147.jpg" alt="500x240" /><br/>
<p>Fusce vel dui. Morbi mattis ullamcorper velit. Etiam ultricies nisi vel augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Praesent nec nisl a purus blandit viverra. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce vel dui. Donec vitae sapien ut libero venenatis faucibus. Phasellus magna. Etiam ultricies nisi vel augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Morbi mattis ullamcorper velit.</p>
<p>Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Quisque id mi. Praesent nec nisl a purus blandit viverra. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Praesent turpis. Fusce vel dui. Donec vitae sapien ut libero venenatis faucibus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus magna. Morbi mattis ullamcorper velit. Etiam ultricies nisi vel augue.</p>
<p>Fusce vel dui. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Quisque id mi. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent nec nisl a purus blandit viverra. Morbi mattis ullamcorper velit. Donec vitae sapien ut libero venenatis faucibus. Etiam ultricies nisi vel augue.</p>
<p>Morbi mattis ullamcorper velit. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent nec nisl a purus blandit viverra.</p>
', 5, '2020-01-28 20:19:08', 5704, 0);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (205, 'Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.', '/duis-arcu-tortor-suscipit-eget-imperdiet-nec-imperdiet-iaculis-ipsum', '/media/tech/5e36972d-02e6-44e7-98a6-ad4286f0ef11.jpg', '<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>', '<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>
<p>In ac felis quis tortor malesuada pretium. Vestibulum ullamcorper mauris at ligula. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Aenean imperdiet. Phasellus magna. Ut varius tincidunt libero. Pellentesque auctor neque nec urna.</p>
<p>Pellentesque auctor neque nec urna. In auctor lobortis lacus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Curabitur vestibulum aliquam leo. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Aenean viverra rhoncus pede. Aenean imperdiet. Vestibulum ullamcorper mauris at ligula.</p>
<p>Phasellus magna. Pellentesque auctor neque nec urna. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Ut varius tincidunt libero. In ac felis quis tortor malesuada pretium.</p>
<img class="float-center" src="/media/tech/8191426d-2738-4394-a631-8b00eb66a920.jpg" alt="600x180" /><br/>
<p>Curabitur vestibulum aliquam leo. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum ullamcorper mauris at ligula. Morbi mattis ullamcorper velit. Ut varius tincidunt libero. Praesent nec nisl a purus blandit viverra. Nullam sagittis. Suspendisse feugiat. In ac felis quis tortor malesuada pretium. Donec mollis hendrerit risus. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. In auctor lobortis lacus. Fusce pharetra convallis urna.</p>
<p>Praesent nec nisl a purus blandit viverra. Morbi mattis ullamcorper velit. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Curabitur vestibulum aliquam leo.</p>
<p>Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. In auctor lobortis lacus. Aenean imperdiet. Vestibulum ullamcorper mauris at ligula. Pellentesque auctor neque nec urna. Aenean viverra rhoncus pede. Suspendisse feugiat.</p>
<p>Curabitur vestibulum aliquam leo. Praesent nec nisl a purus blandit viverra. Ut varius tincidunt libero.</p>
<p>Donec mollis hendrerit risus. Ut varius tincidunt libero. In auctor lobortis lacus. Aenean imperdiet. Praesent nec nisl a purus blandit viverra. Suspendisse feugiat. Nullam sagittis. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Phasellus magna. Fusce pharetra convallis urna. Pellentesque auctor neque nec urna. Curabitur vestibulum aliquam leo. Aenean viverra rhoncus pede.</p>
<p>Morbi mattis ullamcorper velit.</p>
<img class="float-center" src="/media/tech/19d4ecef-ab92-491a-bf81-c52c6acc8af4.jpg" alt="200x260" /><br/>
<p>In ac felis quis tortor malesuada pretium. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Ut varius tincidunt libero. Morbi mattis ullamcorper velit. Aenean imperdiet. Donec mollis hendrerit risus. In auctor lobortis lacus. Curabitur vestibulum aliquam leo. Fusce pharetra convallis urna. Vestibulum ullamcorper mauris at ligula. Suspendisse feugiat. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Pellentesque auctor neque nec urna.</p>
', 7, '2019-07-27 00:56:02', 908, 5);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (206, 'Proin sapien ipsum, porta a, auctor quis, euismod ut, mi.', '/proin-sapien-ipsum-porta-a-auctor-quis-euismod-ut-mi', '/media/tech/8decef8f-5e38-4fdd-af75-959213a2fb60.jpg', '<p>Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ip</p>', '<p>Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Proin sapien ip</p>
<p>Sed in libero ut nibh placerat accumsan. Etiam rhoncus. Aenean vulputate eleifend tellus. Sed cursus turpis vitae tortor.</p>
<p>Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Maecenas nec odio et ante tincidunt tempus. Sed in libero ut nibh placerat accumsan.</p>
<p>Sed cursus turpis vitae tortor. Etiam sit amet orci eget eros faucibus tincidunt. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Etiam rhoncus. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Sed in libero ut nibh placerat accumsan.</p>
<p>Maecenas nec odio et ante tincidunt tempus. Sed in libero ut nibh placerat accumsan. Etiam sit amet orci eget eros faucibus tincidunt.</p>
<p>Sed in libero ut nibh placerat accumsan.</p>
', 9, '2019-10-23 05:58:02', 7233, 4);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (207, 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am', '/maecenas-tempus-tellus-eget-condimentum-rhoncus-sem-quam-semper-libero-sit-am', '/media/nature/1934849a-1f1c-4ca8-afcb-5b19895436d2.jpg', '<p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maec</p>', '<p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Maec</p>
<p>Sed cursus turpis vitae tortor. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Morbi mollis tellus ac sapien. Etiam ultricies nisi vel augue. Phasellus magna. Praesent turpis. Donec posuere vulputate arcu. Vestibulum volutpat pretium libero. Nunc nonummy metus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc nec neque. Sed fringilla mauris sit amet nibh. Sed in libero ut nibh placerat accumsan. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Praesent ac massa at ligula laoreet iaculis. Pellentesque ut neque.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi mollis tellus ac sapien. Sed cursus turpis vitae tortor.</p>
<p>Donec posuere vulputate arcu. Sed in libero ut nibh placerat accumsan. In hac habitasse platea dictumst. Nunc nonummy metus. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Sed fringilla mauris sit amet nibh. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Etiam ultricies nisi vel augue. Morbi mollis tellus ac sapien. Phasellus magna. Praesent turpis. Sed cursus turpis vitae tortor. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Praesent ac massa at ligula laoreet iaculis. Pellentesque ut neque.</p>
<p>Praesent turpis. Pellentesque ut neque. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Sed in libero ut nibh placerat accumsan. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Etiam ultricies nisi vel augue. Nunc nec neque.</p>
<p>Nunc nonummy metus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit am Sed in libero ut nibh placerat accumsan. Pellentesque ut neque. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Sed cursus turpis vitae tortor. Phasellus magna. Vestibulum volutpat pretium libero. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Nunc nec neque. Donec posuere vulputate arcu. Morbi mollis tellus ac sapien. Praesent turpis. Sed fringilla mauris sit amet nibh. Praesent ac massa at ligula laoreet iaculis.</p>
<p>Praesent ac massa at ligula laoreet iaculis. Nunc nec neque. Sed in libero ut nibh placerat accumsan.</p>
<p>Morbi mollis tellus ac sapien. Praesent ac massa at ligula laoreet iaculis. In hac habitasse platea dictumst. Donec posuere vulputate arcu. Sed in libero ut nibh placerat accumsan. Etiam ultricies nisi vel augue. Nunc nonummy metus. Praesent turpis. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus magna.</p>
<p>Sed in libero ut nibh placerat accumsan. Nunc nonummy metus. Praesent turpis. Sed cursus turpis vitae tortor. Sed fringilla mauris sit amet nibh. Phasellus magna. In hac habitasse platea dictumst.</p>
', 4, '2020-03-11 07:27:02', 8693, 2);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (208, 'Pellentesque ut neque.', '/pellentesque-ut-neque', '/media/nature/5923bf49-ba1c-4d0c-b5c5-e8d155b7faf5.jpg', '<p>Pellentesque ut neque. Pellentesque ut neque. Pellentesque ut neque.</p>', '<p>Pellentesque ut neque. Pellentesque ut neque. Pellentesque ut neque.</p>
<p>Mauris sollicitudin fermentum libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque ut neque. Nunc nulla.</p>
<p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nunc nulla. Morbi ac felis. Donec mollis hendrerit risus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque ut neque. Praesent nec nisl a purus blandit viverra. Phasellus accumsan cursus velit.</p>
<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Vestibulum fringilla pede sit amet augue.</p>
<p>Nunc nulla. Praesent nec nisl a purus blandit viverra.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus accumsan cursus velit. Praesent nec nisl a purus blandit viverra. Pellentesque ut neque. Vestibulum fringilla pede sit amet augue. Mauris sollicitudin fermentum libero. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Morbi ac felis.</p>
<p>Praesent nec nisl a purus blandit viverra. Phasellus accumsan cursus velit. Vestibulum fringilla pede sit amet augue. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Nunc nulla. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p></p>
<img class="float-center" src="/media/nature/70fdf475-5b3e-4298-b221-84b88d3cbbe6.jpg" alt="600x160" /><br/>
<p>Morbi ac felis. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero.</p>
<p>Vestibulum fringilla pede sit amet augue.</p>
<p>Praesent nec nisl a purus blandit viverra. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Vestibulum fringilla pede sit amet augue. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Morbi ac felis.</p>
<p>Mauris sollicitudin fermentum libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus accumsan cursus velit. Morbi ac felis. Praesent nec nisl a purus blandit viverra. Donec mollis hendrerit risus.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque ut neque. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero.</p>
<p>Pellentesque ut neque. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<img class="float-center" src="/media/nature/984dbb23-ce2f-49d6-8c04-73686a098d41.jpg" alt="200x160" /><br/>
<p></p>
<p>Morbi ac felis. Donec mollis hendrerit risus. Vestibulum fringilla pede sit amet augue. Nunc nulla. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Pellentesque ut neque. Praesent nec nisl a purus blandit viverra. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Mauris sollicitudin fermentum libero.</p>
<p>Vestibulum fringilla pede sit amet augue. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Donec mollis hendrerit risus. Morbi ac felis. Praesent nec nisl a purus blandit viverra.</p>
<p>Pellentesque ut neque. Nunc nulla. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Praesent nec nisl a purus blandit viverra. Mauris sollicitudin fermentum libero. Morbi ac felis.</p>
<p>Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Morbi ac felis. Mauris sollicitudin fermentum libero. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent nec nisl a purus blandit viverra. Vestibulum fringilla pede sit amet augue.</p>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
<p>Nunc nulla. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Praesent nec nisl a purus blandit viverra. Pellentesque ut neque. Donec mollis hendrerit risus.</p>
<p>Donec mollis hendrerit risus. Nunc nulla. Pellentesque ut neque. Praesent nec nisl a purus blandit viverra. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero.</p>
<p>Morbi ac felis. Nunc nulla. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Vestibulum fringilla pede sit amet augue. Praesent nec nisl a purus blandit viverra. Phasellus accumsan cursus velit. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Pellentesque ut neque.</p>
<p>Morbi ac felis. Mauris sollicitudin fermentum libero. Phasellus accumsan cursus velit. Pellentesque ut neque. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent nec nisl a purus blandit viverra. Nunc nulla. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Donec mollis hendrerit risus.</p>
<p>Morbi ac felis. Phasellus accumsan cursus velit. Vestibulum fringilla pede sit amet augue. Praesent nec nisl a purus blandit viverra. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris sollicitudin fermentum libero. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p>Phasellus accumsan cursus velit. Pellentesque ut neque. Donec mollis hendrerit risus.</p>
<p>Morbi ac felis. Vestibulum fringilla pede sit amet augue. Praesent nec nisl a purus blandit viverra. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
<p>Vestibulum fringilla pede sit amet augue. Mauris sollicitudin fermentum libero. Nunc nulla.</p>
<img class="float-center" src="/media/nature/d52f0309-954f-4bbd-be83-a447d1370f0a.jpg" alt="400x180" /><br/>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis hendrerit risus. Vestibulum fringilla pede sit amet augue. Phasellus accumsan cursus velit. Mauris sollicitudin fermentum libero. Nunc nulla.</p>
<p>Praesent nec nisl a purus blandit viverra. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi ac felis. Phasellus accumsan cursus velit. Nunc nulla. Vestibulum fringilla pede sit amet augue.</p>
<p>Phasellus accumsan cursus velit. Praesent nec nisl a purus blandit viverra. Donec mollis hendrerit risus.</p>
', 1, '2019-06-19 14:21:03', 8212, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (209, 'Phasellus dolor.', '/phasellus-dolor', '/media/animals/efb9374b-3ddf-4020-b342-94c07d4f638b.jpg', '<p>Phasellus dolor. Phasellus dolor. Phasellus dolor.</p>', '<p>Phasellus dolor. Phasellus dolor. Phasellus dolor.</p>
<p>Cras ultricies mi eu turpis hendrerit fringilla. Aenean imperdiet. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Etiam ultricies nisi vel augue. Praesent turpis. Nullam sagittis. Phasellus dolor. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus blandit leo ut odio. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nulla sit amet est. Vivamus elementum semper nisi. Nunc nonummy metus. Ut varius tincidunt libero. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>
<p>Cras ultricies mi eu turpis hendrerit fringilla. Aenean commodo ligula eget dolor. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Etiam ultricies nisi vel augue. Phasellus dolor. Ut varius tincidunt libero. Aenean imperdiet.</p>
<p>Praesent turpis. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nullam sagittis. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Etiam ultricies nisi vel augue. Aenean commodo ligula eget dolor. Phasellus dolor. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Morbi ac felis. Nunc nonummy metus. Phasellus blandit leo ut odio. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Cras ultricies mi eu turpis hendrerit fringilla. Aenean imperdiet. Ut varius tincidunt libero. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus elementum semper nisi. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
', 4, '2019-08-10 17:06:03', 9014, 4);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (210, 'Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.', '/phasellus-leo-dolor-tempus-non-auctor-et-hendrerit-quis-nisi', '/media/arch/837a390c-03f5-4f58-8a8f-dad343473277.jpg', '<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.</p>', '<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.</p>
<p></p>
<p>Phasellus nec sem in justo pellentesque facilisis. Integer tincidunt. Fusce fermentum. Vestibulum fringilla pede sit amet augue. Praesent nonummy mi in odio. Vestibulum volutpat pretium libero. Ut varius tincidunt libero. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.</p>
<p>Vestibulum fringilla pede sit amet augue. Ut varius tincidunt libero. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Duis leo. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Integer tincidunt. Etiam feugiat lorem non metus.</p>
<p>Vestibulum fringilla pede sit amet augue. Duis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Phasellus nec sem in justo pellentesque facilisis. Vestibulum volutpat pretium libero. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Praesent nonummy mi in odio.</p>
<p>Etiam feugiat lorem non metus. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Duis leo. Ut varius tincidunt libero. Phasellus nec sem in justo pellentesque facilisis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Integer tincidunt. Vestibulum fringilla pede sit amet augue. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Praesent nonummy mi in odio. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Fusce fermentum. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Vestibulum volutpat pretium libero.</p>
', 7, '2020-01-26 14:19:03', 3771, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (211, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '/vestibulum-ante-ipsum-primis-in-faucibus-orci-luctus-et-ultrices-posuere-cubilia', '/media/arch/ca4851df-20c6-4ec1-ad2c-1cb0d8691928.jpg', '<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia</p>', '<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia</p>
<p>Duis leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia</p>
<p>Nunc interdum lacus sit amet orci. Pellentesque ut neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Curabitur at lacus ac velit ornare lobortis. Sed aliquam ultrices mauris. Phasellus dolor. Morbi mattis ullamcorper velit. Duis leo.</p>
<p>Nunc nec neque. Morbi mattis ullamcorper velit. Phasellus dolor.</p>
<p>Praesent adipiscing. Morbi mollis tellus ac sapien. Pellentesque ut neque. Phasellus dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Vivamus elementum semper nisi. Curabitur at lacus ac velit ornare lobortis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo.</p>
<p>Morbi mattis ullamcorper velit. Vestibulum volutpat pretium libero. Cras ultricies mi eu turpis hendrerit fringilla. Praesent adipiscing. Vivamus elementum semper nisi. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Sed aliquam ultrices mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Morbi mollis tellus ac sapien. Curabitur at lacus ac velit ornare lobortis. Nunc interdum lacus sit amet orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Phasellus dolor. Nunc nec neque. Duis leo.</p>
<p>Curabitur at lacus ac velit ornare lobortis. Nunc interdum lacus sit amet orci. Praesent adipiscing. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Vestibulum volutpat pretium libero. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Morbi mattis ullamcorper velit. Nulla sit amet est. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Cras ultricies mi eu turpis hendrerit fringilla. Pellentesque ut neque. Sed aliquam ultrices mauris. Vivamus elementum semper nisi. Phasellus dolor. Nunc nec neque. Morbi mollis tellus ac sapien. Duis leo.</p>
<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Nunc interdum lacus sit amet orci. Pellentesque ut neque. Morbi mattis ullamcorper velit. Duis leo. Nulla sit amet est. Cras ultricies mi eu turpis hendrerit fringilla. Vivamus elementum semper nisi. Vestibulum volutpat pretium libero. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Phasellus dolor.</p>
<p></p>
', 2, '2020-04-20 06:30:04', 1600, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (212, 'Curabitur ullamcorper ultricies nisi.', '/curabitur-ullamcorper-ultricies-nisi', '/media/animals/5399c3fc-a136-4fcc-b281-04b04096e9b9.jpg', '<p>Curabitur ullamcorper ultricies nisi. Curabitur ullamcorper ultricies nisi. Curabitur ullamcorper ultricies nisi.</p>', '<p>Curabitur ullamcorper ultricies nisi. Curabitur ullamcorper ultricies nisi. Curabitur ullamcorper ultricies nisi.</p>
<p>Phasellus consectetuer vestibulum elit. In ac felis quis tortor malesuada pretium. Nunc nulla. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Phasellus dolor. Fusce vel dui. Etiam rhoncus.</p>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Praesent nec nisl a purus blandit viverra. Maecenas vestibulum mollis diam. Nulla sit amet est. Nunc nulla. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. In ac felis quis tortor malesuada pretium. Phasellus consectetuer vestibulum elit. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Curabitur ullamcorper ultricies nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Fusce vel dui. In dui magna, posuere eget, vestibulum et, tempor auctor, justo.</p>
<p>Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Etiam rhoncus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo.</p>
<p>Maecenas vestibulum mollis diam. In ac felis quis tortor malesuada pretium. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Curabitur ullamcorper ultricies nisi. Praesent nec nisl a purus blandit viverra. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Etiam rhoncus. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Fusce vel dui. Phasellus consectetuer vestibulum elit. Phasellus dolor. Nulla sit amet est. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.</p>
', 9, '2020-01-06 11:21:04', 5379, 3);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (213, 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.', '/donec-quam-felis-ultricies-nec-pellentesque-eu-pretium-quis-sem', '/media/tech/492a1cf1-0528-43dd-9df6-196bd5afc6b3.jpg', '<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellent</p>', '<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec quam felis, ultricies nec, pellent</p>
<p>Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Nullam cursus lacinia erat. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Praesent turpis. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Phasellus consectetuer vestibulum elit. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Vestibulum volutpat pretium libero. Aenean commodo ligula eget dolor. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Vestibulum volutpat pretium libero. Mauris sollicitudin fermentum libero. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.</p>
<p>Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Proin faucibus arcu quis ante. Nullam accumsan lorem in dui. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Mauris sollicitudin fermentum libero. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Nullam cursus lacinia erat. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Phasellus consectetuer vestibulum elit. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum volutpat pretium libero. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Praesent turpis. Aenean commodo ligula eget dolor.</p>
<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo.</p>
', 8, '2019-08-23 18:41:04', 6184, 2);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (214, 'Aenean ut eros et nisl sagittis vestibulum.', '/aenean-ut-eros-et-nisl-sagittis-vestibulum', '/media/nature/012913c5-7c56-426d-9a6a-afa184cf35a3.jpg', '<p>Aenean ut eros et nisl sagittis vestibulum.</p>', '<p>Aenean ut eros et nisl sagittis vestibulum.</p>
<p></p>
<p>Curabitur ullamcorper ultricies nisi.</p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Cras ultricies mi eu turpis hendrerit fringilla.</p>
<p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nullam quis ante. Pellentesque ut neque. Aenean ut eros et nisl sagittis vestibulum. Cras ultricies mi eu turpis hendrerit fringilla. Etiam imperdiet imperdiet orci. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Praesent turpis. Curabitur ullamcorper ultricies nisi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Etiam imperdiet imperdiet orci. Curabitur ullamcorper ultricies nisi. Aenean ut eros et nisl sagittis vestibulum. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Praesent turpis. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Cras ultricies mi eu turpis hendrerit fringilla. Aenean ut eros et nisl sagittis vestibulum. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est.</p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Pellentesque ut neque. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Curabitur ullamcorper ultricies nisi.</p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Curabitur ullamcorper ultricies nisi. Aenean ut eros et nisl sagittis vestibulum. Etiam imperdiet imperdiet orci. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nullam quis ante. Cras ultricies mi eu turpis hendrerit fringilla. Praesent turpis. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Pellentesque ut neque.</p>
<p>Etiam imperdiet imperdiet orci. Pellentesque ut neque. Curabitur ullamcorper ultricies nisi.</p>
<img class="float-center" src="/media/nature/d4590e52-a252-4dd3-bd2c-6e3f0639b37a.jpg" alt="600x220" /><br/>
<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Pellentesque ut neque. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
<p>Etiam imperdiet imperdiet orci. Pellentesque ut neque. Curabitur ullamcorper ultricies nisi. Aenean ut eros et nisl sagittis vestibulum. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nullam quis ante. Praesent turpis. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Cras ultricies mi eu turpis hendrerit fringilla.</p>
<p>Curabitur ullamcorper ultricies nisi. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nullam quis ante. Etiam imperdiet imperdiet orci. Aenean ut eros et nisl sagittis vestibulum. Praesent turpis.</p>
<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p>Cras ultricies mi eu turpis hendrerit fringilla. Aenean ut eros et nisl sagittis vestibulum. Nullam quis ante. Praesent turpis. Pellentesque ut neque. Curabitur ullamcorper ultricies nisi.</p>
<p>Curabitur ullamcorper ultricies nisi. Praesent turpis. Aenean ut eros et nisl sagittis vestibulum. Pellentesque ut neque. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Praesent turpis. Nullam quis ante. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est.</p>
<p>Curabitur ullamcorper ultricies nisi. Etiam imperdiet imperdiet orci. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nullam quis ante.</p>
<p>Cras ultricies mi eu turpis hendrerit fringilla. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Etiam imperdiet imperdiet orci.</p>
<p>Etiam imperdiet imperdiet orci. Cras ultricies mi eu turpis hendrerit fringilla.</p>
<p>Pellentesque ut neque. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Cras ultricies mi eu turpis hendrerit fringilla. Praesent turpis.</p>
<img class="float-center" src="/media/nature/1364518e-ec0d-483f-9e94-8d3903a3a334.jpg" alt="600x280" /><br/>
<p>Etiam imperdiet imperdiet orci.</p>
<p>Etiam imperdiet imperdiet orci. Nullam quis ante.</p>
<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque ut neque. Etiam imperdiet imperdiet orci. Praesent turpis. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Curabitur ullamcorper ultricies nisi.</p>
<p>Praesent turpis. Curabitur ullamcorper ultricies nisi. Nullam quis ante. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aenean ut eros et nisl sagittis vestibulum. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p>Aenean ut eros et nisl sagittis vestibulum. Cras ultricies mi eu turpis hendrerit fringilla. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Curabitur ullamcorper ultricies nisi. Etiam imperdiet imperdiet orci. Nullam quis ante. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque ut neque. Praesent turpis.</p>
<p>Pellentesque ut neque. Cras ultricies mi eu turpis hendrerit fringilla. Praesent turpis. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Curabitur ullamcorper ultricies nisi. Nullam quis ante. Aenean ut eros et nisl sagittis vestibulum. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Etiam imperdiet imperdiet orci.</p>
<p>Curabitur ullamcorper ultricies nisi. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Pellentesque ut neque. Cras ultricies mi eu turpis hendrerit fringilla. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Praesent turpis.</p>
<p>Etiam imperdiet imperdiet orci. Praesent turpis. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Cras ultricies mi eu turpis hendrerit fringilla. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Pellentesque ut neque. Nullam quis ante. Curabitur ullamcorper ultricies nisi. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est.</p>
<p>Pellentesque ut neque. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Etiam imperdiet imperdiet orci. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Etiam imperdiet imperdiet orci. Curabitur ullamcorper ultricies nisi. Cras ultricies mi eu turpis hendrerit fringilla. Pellentesque ut neque.</p>
<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Cras ultricies mi eu turpis hendrerit fringilla. Aenean ut eros et nisl sagittis vestibulum. Praesent turpis.</p>
<img class="float-center" src="/media/nature/b4832695-3643-4f20-8f54-a84524532470.jpg" alt="400x280" /><br/>
<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Curabitur ullamcorper ultricies nisi. Pellentesque ut neque. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p>Curabitur ullamcorper ultricies nisi. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Cras ultricies mi eu turpis hendrerit fringilla. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Aenean ut eros et nisl sagittis vestibulum. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nullam quis ante.</p>
<p>Nullam quis ante. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Praesent turpis. Aenean ut eros et nisl sagittis vestibulum. Cras ultricies mi eu turpis hendrerit fringilla. Curabitur ullamcorper ultricies nisi. Etiam imperdiet imperdiet orci. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Pellentesque ut neque.</p>
<p>Curabitur ullamcorper ultricies nisi. Pellentesque ut neque.</p>
<p></p>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Aenean ut eros et nisl sagittis vestibulum. Praesent turpis.</p>
<p>Pellentesque ut neque. Aenean ut eros et nisl sagittis vestibulum. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
<p>Pellentesque ut neque. Praesent turpis. Nullam quis ante. Cras ultricies mi eu turpis hendrerit fringilla.</p>
', 8, '2019-07-29 06:11:05', 9569, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (215, 'Curabitur vestibulum aliquam leo.', '/curabitur-vestibulum-aliquam-leo', '/media/animals/bf39c32b-0de3-441d-ad4c-b0211495729c.jpg', '<p>Curabitur vestibulum aliquam leo. Curabitur vestibulum aliquam leo. Curabitur vestibulum aliquam leo.</p>', '<p>Curabitur vestibulum aliquam leo. Curabitur vestibulum aliquam leo. Curabitur vestibulum aliquam leo.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus ullamcorper ipsum rutrum nunc. Cras id dui.</p>
<p>Nam pretium turpis et arcu.</p>
<p>Curabitur vestibulum aliquam leo. Pellentesque auctor neque nec urna.</p>
<p>Fusce fermentum. Phasellus dolor. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Nam pretium turpis et arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras id dui. Curabitur vestibulum aliquam leo.</p>
<img class="float-center" src="/media/animals/f0621b7c-fcc1-40ce-91f3-0191c96c5ad8.jpg" alt="500x260" /><br/>
<p>Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Aenean commodo ligula eget dolor. Nam pretium turpis et arcu. Pellentesque auctor neque nec urna.</p>
<p>Nam pretium turpis et arcu. Nullam cursus lacinia erat. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Aenean commodo ligula eget dolor. Curabitur vestibulum aliquam leo. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.</p>
<p>Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Nullam cursus lacinia erat. Nam pretium turpis et arcu. Fusce fermentum. Pellentesque auctor neque nec urna. Curabitur vestibulum aliquam leo. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Sed lectus. Cras id dui. Phasellus ullamcorper ipsum rutrum nunc. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque auctor neque nec urna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus dolor. Nam pretium turpis et arcu. Curabitur vestibulum aliquam leo. Cras id dui. Sed lectus. Aenean commodo ligula eget dolor. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Duis leo.</p>
<p>Fusce fermentum. Pellentesque auctor neque nec urna. Nam pretium turpis et arcu. Phasellus ullamcorper ipsum rutrum nunc. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus dolor. Nullam cursus lacinia erat. Sed lectus. Cras id dui. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Fusce fermentum. Aenean commodo ligula eget dolor. Phasellus ullamcorper ipsum rutrum nunc. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Duis leo. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Sed lectus. Cras id dui. Phasellus dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Aenean commodo ligula eget dolor. Curabitur vestibulum aliquam leo. Phasellus dolor. Nullam cursus lacinia erat. Duis leo. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Sed lectus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Cras id dui. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Curabitur vestibulum aliquam leo. Sed lectus. Pellentesque auctor neque nec urna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Phasellus dolor. Aenean commodo ligula eget dolor. Nam pretium turpis et arcu. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<p>Nullam cursus lacinia erat. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Curabitur vestibulum aliquam leo. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Phasellus dolor. Aenean commodo ligula eget dolor. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Fusce fermentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque auctor neque nec urna. Curabitur vestibulum aliquam leo. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nam pretium turpis et arcu. Sed lectus. Aenean commodo ligula eget dolor. Phasellus ullamcorper ipsum rutrum nunc. Cras id dui. Duis leo. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede.</p>
<p>Fusce fermentum. Phasellus dolor.</p>
<p>Sed lectus. Fusce fermentum. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nam pretium turpis et arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus dolor. Duis leo. Pellentesque auctor neque nec urna. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.</p>
<p>Sed lectus. Pellentesque auctor neque nec urna. Fusce fermentum. Duis leo.</p>
<p>Curabitur vestibulum aliquam leo. Fusce fermentum. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Phasellus dolor. Sed lectus. Nullam cursus lacinia erat. Pellentesque auctor neque nec urna. Nam pretium turpis et arcu. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus ullamcorper ipsum rutrum nunc. Duis leo. Cras id dui.</p>
<img class="float-center" src="/media/animals/64c41058-c98c-4d3a-80c9-41ea7b9104fc.jpg" alt="600x160" /><br/>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque auctor neque nec urna. Nullam cursus lacinia erat. Duis leo. Aenean commodo ligula eget dolor. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Curabitur vestibulum aliquam leo. Sed lectus. Phasellus dolor. Phasellus ullamcorper ipsum rutrum nunc. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Cras id dui.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur vestibulum aliquam leo. Nam pretium turpis et arcu. Sed lectus. Pellentesque auctor neque nec urna. Cras id dui. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Aenean commodo ligula eget dolor. Duis leo.</p>
<p>Phasellus dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Phasellus dolor. Curabitur vestibulum aliquam leo. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Aenean commodo ligula eget dolor. Duis leo. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Sed lectus. Nullam cursus lacinia erat. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Pellentesque auctor neque nec urna. Fusce fermentum. Nam pretium turpis et arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
<p>Phasellus dolor. Fusce fermentum. Nullam cursus lacinia erat. Aenean commodo ligula eget dolor. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Curabitur vestibulum aliquam leo. Nam pretium turpis et arcu.</p>
<p>Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus dolor. Nam pretium turpis et arcu. Sed lectus. Curabitur vestibulum aliquam leo. Phasellus ullamcorper ipsum rutrum nunc.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus dolor. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Duis leo. Nullam cursus lacinia erat. Sed lectus. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Pellentesque auctor neque nec urna. Fusce fermentum. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<p>Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nullam cursus lacinia erat. Aenean commodo ligula eget dolor. Phasellus dolor. Phasellus ullamcorper ipsum rutrum nunc. Curabitur vestibulum aliquam leo. Fusce fermentum. Nam pretium turpis et arcu. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque auctor neque nec urna.</p>
<p></p>
<img class="float-center" src="/media/animals/d2925793-5c7b-4be5-a9fb-7efae4759baa.jpg" alt="500x240" /><br/>
<p>Cras id dui.</p>
', 3, '2019-12-04 09:03:06', 3905, 0);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (216, 'Phasellus dolor.', '/phasellus-dolor', '/media/tech/397a7646-9a90-4ffa-88bb-caf6af955eec.jpg', '<p>Phasellus dolor.</p>', '<p>Phasellus dolor.</p>
<p>Praesent nonummy mi in odio. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Phasellus dolor. Phasellus viverra nulla ut metus varius laoreet. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Aenean massa. Donec mollis hendrerit risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus blandit leo ut odio. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Fusce pharetra convallis urna. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. In consectetuer turpis ut velit.</p>
<p>Phasellus blandit leo ut odio. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Phasellus viverra nulla ut metus varius laoreet.</p>
<p></p>
', 4, '2019-06-21 09:52:07', 4223, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (218, 'Donec mollis hendrerit risus.', '/donec-mollis-hendrerit-risus', '/media/animals/e52e961a-c9e4-4632-a662-f55472a6a859.jpg', '<p>Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus.</p>', '<p>Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus. Donec mollis hendrerit risus.</p>
<p>Etiam rhoncus. Nam eget dui.</p>
<p>Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Nam pretium turpis et arcu. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec mollis hendrerit risus.</p>
<p>Aenean ut eros et nisl sagittis vestibulum. Etiam rhoncus. Nullam dictum felis eu pede mollis pretium. Nam pretium turpis et arcu. Nam eget dui. Maecenas vestibulum mollis diam. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Curabitur ullamcorper ultricies nisi. Donec mollis hendrerit risus. Etiam rhoncus. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nam pretium turpis et arcu.</p>
<p>Etiam rhoncus. Aenean ut eros et nisl sagittis vestibulum. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam dictum felis eu pede mollis pretium. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Maecenas vestibulum mollis diam. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Curabitur ullamcorper ultricies nisi. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.</p>
<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Etiam rhoncus. Curabitur ullamcorper ultricies nisi. Donec mollis hendrerit risus. Aenean ut eros et nisl sagittis vestibulum.</p>
<p>Curabitur ullamcorper ultricies nisi. Maecenas vestibulum mollis diam. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Etiam rhoncus. Maecenas nec odio et ante tincidunt tempus. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nullam dictum felis eu pede mollis pretium. Aenean ut eros et nisl sagittis vestibulum. Nam pretium turpis et arcu. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Nam eget dui.</p>
<p>Nam eget dui. Maecenas nec odio et ante tincidunt tempus. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Nam pretium turpis et arcu. Aenean ut eros et nisl sagittis vestibulum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis hendrerit risus. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nullam dictum felis eu pede mollis pretium. Curabitur ullamcorper ultricies nisi. Etiam rhoncus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Maecenas vestibulum mollis diam. Nam pretium turpis et arcu. Curabitur ullamcorper ultricies nisi. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Aenean ut eros et nisl sagittis vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec mollis hendrerit risus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam dictum felis eu pede mollis pretium. Etiam rhoncus. Maecenas nec odio et ante tincidunt tempus.</p>
', 5, '2020-04-09 00:43:08', 8521, 3);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (219, 'Morbi ac felis.', '/morbi-ac-felis', '/media/arch/6eeac5f7-4e31-48fb-a7e9-7d10746ba1e3.jpg', '<p>Morbi ac felis. Morbi ac felis. Morbi ac felis.</p>', '<p>Morbi ac felis. Morbi ac felis. Morbi ac felis.</p>
<p>Nullam vel sem. Curabitur nisi. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Ut non enim eleifend felis pretium feugiat. Morbi ac felis. Phasellus accumsan cursus velit.</p>
', 4, '2019-07-17 10:27:08', 2991, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (220, 'Aenean commodo ligula eget dolor.', '/aenean-commodo-ligula-eget-dolor', '/media/arch/64b754f4-0e36-45b7-acd9-eb05a67c9917.jpg', '<p>Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor.</p>', '<p>Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor. Aenean commodo ligula eget dolor.</p>
<p>Pellentesque auctor neque nec urna. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Quisque rutrum. Etiam sit amet orci eget eros faucibus tincidunt. Quisque id mi. Nullam cursus lacinia erat. Praesent nec nisl a purus blandit viverra. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Integer tincidunt. Aenean commodo ligula eget dolor. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
<p>Vivamus quis mi. Pellentesque auctor neque nec urna. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Etiam sit amet orci eget eros faucibus tincidunt. Quisque id mi. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Quisque rutrum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Integer tincidunt. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Praesent nec nisl a purus blandit viverra. Nunc interdum lacus sit amet orci. Nullam cursus lacinia erat. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis.</p>
<p>Praesent nec nisl a purus blandit viverra. Integer tincidunt. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Quisque id mi. Vivamus quis mi. Quisque rutrum. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Nullam cursus lacinia erat. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Pellentesque auctor neque nec urna. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Nunc interdum lacus sit amet orci.</p>
<p>Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Quisque rutrum. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Integer tincidunt.</p>
<p>Aenean commodo ligula eget dolor. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Integer tincidunt. Quisque id mi. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.</p>
<p>Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Aenean commodo ligula eget dolor. Integer tincidunt. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Praesent nec nisl a purus blandit viverra. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Nullam cursus lacinia erat. Pellentesque auctor neque nec urna. Quisque rutrum. Quisque id mi.</p>
<p>Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Nullam cursus lacinia erat. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Aenean commodo ligula eget dolor. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Integer tincidunt. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>
', 5, '2020-01-27 14:44:08', 6987, 3);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (221, 'Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.', '/pellentesque-libero-tortor-tincidunt-et-tincidunt-eget-semper-nec-quam', '/media/arch/b3d7b902-5f5a-4a87-bd02-13338352e8b2.jpg', '<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>', '<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Fusce vulputate eleifend sapien. Fusce convallis metus id felis luctus adipiscing. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p>Phasellus magna. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede.</p>
<p>Phasellus magna. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Fusce vulputate eleifend sapien. Etiam ut purus mattis mauris sodales aliquam. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Ut non enim eleifend felis pretium feugiat. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Fusce convallis metus id felis luctus adipiscing.</p>
<img class="float-center" src="/media/arch/2530f8c4-aaa4-413c-8ac1-b5340efcacc6.jpg" alt="600x180" /><br/>
<p>Vestibulum dapibus nunc ac augue. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Fusce convallis metus id felis luctus adipiscing. Phasellus magna. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Fusce vulputate eleifend sapien. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Ut non enim eleifend felis pretium feugiat. Etiam ut purus mattis mauris sodales aliquam.</p>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Fusce convallis metus id felis luctus adipiscing. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Phasellus magna. Ut non enim eleifend felis pretium feugiat. Vestibulum dapibus nunc ac augue. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Fusce vulputate eleifend sapien.</p>
<p>Vestibulum dapibus nunc ac augue. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Ut non enim eleifend felis pretium feugiat. Etiam ut purus mattis mauris sodales aliquam. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Fusce vulputate eleifend sapien. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p>Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Etiam ut purus mattis mauris sodales aliquam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Phasellus magna. Fusce convallis metus id felis luctus adipiscing. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Ut non enim eleifend felis pretium feugiat. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede.</p>
<p>Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Fusce vulputate eleifend sapien. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Ut non enim eleifend felis pretium feugiat. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Etiam ut purus mattis mauris sodales aliquam. Phasellus magna. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
', 5, '2020-04-11 06:47:09', 2532, 4);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (222, 'Duis leo.', '/duis-leo', '/media/animals/3ced8b42-a68e-4013-8839-b457c7cd9852.jpg', '<p>Duis leo.</p>', '<p>Duis leo.</p>
<p>Pellentesque ut neque. Etiam ultricies nisi vel augue. Donec sodales sagittis magna. Integer tincidunt. Phasellus accumsan cursus velit. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Phasellus consectetuer vestibulum elit. Duis leo. Curabitur at lacus ac velit ornare lobortis. In hac habitasse platea dictumst. Nunc nec neque. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Fusce a quam.</p>
<p></p>
<p>In hac habitasse platea dictumst. Pellentesque ut neque. Curabitur ullamcorper ultricies nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Vestibulum dapibus nunc ac augue. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Curabitur at lacus ac velit ornare lobortis. Phasellus accumsan cursus velit. Integer tincidunt. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec mollis hendrerit risus.</p>
<p>Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Donec mollis hendrerit risus. Fusce a quam. Donec sodales sagittis magna. Curabitur ullamcorper ultricies nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Sed hendrerit. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Phasellus accumsan cursus velit. In hac habitasse platea dictumst. Integer tincidunt. Pellentesque ut neque. Phasellus consectetuer vestibulum elit. Nunc nec neque. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Curabitur at lacus ac velit ornare lobortis. Etiam ultricies nisi vel augue.</p>
<p>Curabitur ullamcorper ultricies nisi. Vestibulum dapibus nunc ac augue. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Donec sodales sagittis magna. Integer tincidunt. Sed hendrerit. Phasellus accumsan cursus velit. Nunc nec neque. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Curabitur at lacus ac velit ornare lobortis. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Fusce a quam. Duis leo.</p>
<p>Etiam ultricies nisi vel augue. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. In hac habitasse platea dictumst. Vestibulum dapibus nunc ac augue. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec mollis hendrerit risus. Curabitur ullamcorper ultricies nisi. Fusce a quam. Pellentesque ut neque. Phasellus consectetuer vestibulum elit. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Duis leo. Curabitur at lacus ac velit ornare lobortis. Nunc nec neque. Integer tincidunt. Sed hendrerit.</p>
<p>Etiam ultricies nisi vel augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. In hac habitasse platea dictumst. Duis leo. Vestibulum dapibus nunc ac augue. Pellentesque ut neque. Integer tincidunt. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Phasellus consectetuer vestibulum elit. Curabitur at lacus ac velit ornare lobortis. Nunc nec neque. Fusce a quam. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Donec sodales sagittis magna. Curabitur ullamcorper ultricies nisi.</p>
<p>Integer tincidunt. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec mollis hendrerit risus. Curabitur at lacus ac velit ornare lobortis. In hac habitasse platea dictumst. Curabitur ullamcorper ultricies nisi. Sed hendrerit. Etiam ultricies nisi vel augue. Fusce a quam. Vestibulum dapibus nunc ac augue. Duis leo. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nunc nec neque. Pellentesque ut neque. Phasellus accumsan cursus velit. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>
<img class="float-center" src="/media/animals/310bee81-1315-49a4-9155-73330b86586e.jpg" alt="400x240" /><br/>
<p>Nunc nec neque. In hac habitasse platea dictumst. Etiam ultricies nisi vel augue. Fusce a quam. Curabitur ullamcorper ultricies nisi. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Curabitur at lacus ac velit ornare lobortis. Vestibulum dapibus nunc ac augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Phasellus accumsan cursus velit. Pellentesque ut neque. Duis leo. Donec mollis hendrerit risus. Integer tincidunt. Donec sodales sagittis magna.</p>
<p>Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Curabitur at lacus ac velit ornare lobortis. Phasellus accumsan cursus velit. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Vestibulum dapibus nunc ac augue. Nunc nec neque. Sed hendrerit. Fusce a quam. Donec mollis hendrerit risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Pellentesque ut neque. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Duis leo. In hac habitasse platea dictumst.</p>
<p>Curabitur at lacus ac velit ornare lobortis. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Phasellus accumsan cursus velit. In hac habitasse platea dictumst. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Donec sodales sagittis magna. Fusce a quam.</p>
<p>Vestibulum dapibus nunc ac augue. Curabitur at lacus ac velit ornare lobortis. Sed hendrerit. Phasellus consectetuer vestibulum elit. Integer tincidunt. Etiam ultricies nisi vel augue. Phasellus accumsan cursus velit. In hac habitasse platea dictumst. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec mollis hendrerit risus. Donec sodales sagittis magna.</p>
<p>Curabitur ullamcorper ultricies nisi. Sed hendrerit. Duis leo. In hac habitasse platea dictumst.</p>
<p>Fusce a quam. Donec sodales sagittis magna. Vestibulum dapibus nunc ac augue. Integer tincidunt. Duis leo. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Sed hendrerit. Donec mollis hendrerit risus. Phasellus accumsan cursus velit. Pellentesque ut neque. Etiam ultricies nisi vel augue. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<img class="float-center" src="/media/animals/d5dd24cf-fab1-4951-88e1-236fa966ce99.jpg" alt="600x280" /><br/>
<p>Integer tincidunt. Phasellus consectetuer vestibulum elit. Vestibulum dapibus nunc ac augue.</p>
<p>Pellentesque ut neque. Nunc nec neque. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Vestibulum dapibus nunc ac augue. In hac habitasse platea dictumst. Donec mollis hendrerit risus. Donec sodales sagittis magna. Phasellus accumsan cursus velit. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Etiam ultricies nisi vel augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Sed hendrerit. Fusce a quam. Curabitur ullamcorper ultricies nisi. Duis leo. Integer tincidunt.</p>
<p>Curabitur ullamcorper ultricies nisi. Duis leo. Donec sodales sagittis magna. Sed hendrerit. Integer tincidunt. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Vestibulum dapibus nunc ac augue. Pellentesque ut neque. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Fusce a quam. Etiam ultricies nisi vel augue. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. In hac habitasse platea dictumst. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Phasellus consectetuer vestibulum elit. Curabitur at lacus ac velit ornare lobortis.</p>
<p>Integer tincidunt. In hac habitasse platea dictumst. Curabitur ullamcorper ultricies nisi. Etiam ultricies nisi vel augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Phasellus accumsan cursus velit. Pellentesque ut neque. Donec mollis hendrerit risus. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<p>In hac habitasse platea dictumst. Phasellus consectetuer vestibulum elit. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Duis leo. Curabitur ullamcorper ultricies nisi. Donec sodales sagittis magna. Fusce a quam. Integer tincidunt. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Donec mollis hendrerit risus. Phasellus accumsan cursus velit. Curabitur at lacus ac velit ornare lobortis. Pellentesque ut neque. Etiam ultricies nisi vel augue.</p>
<p>Phasellus accumsan cursus velit. Sed hendrerit. Integer tincidunt. Donec mollis hendrerit risus. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Duis leo. Phasellus consectetuer vestibulum elit. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nunc nec neque. Donec sodales sagittis magna. Etiam ultricies nisi vel augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Fusce a quam.</p>
<p>In hac habitasse platea dictumst. Vestibulum dapibus nunc ac augue. Sed hendrerit. Donec sodales sagittis magna. Duis leo. Nunc nec neque. Pellentesque ut neque. Fusce a quam. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Integer tincidunt. Donec mollis hendrerit risus. Etiam ultricies nisi vel augue.</p>
<img class="float-center" src="/media/animals/770dcce4-d675-462c-804a-1434c3a4df36.jpg" alt="400x260" /><br/>
<p>Curabitur ullamcorper ultricies nisi. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nunc nec neque. Etiam ultricies nisi vel augue. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.</p>
<p>Duis leo. Curabitur ullamcorper ultricies nisi. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Pellentesque ut neque. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Vestibulum dapibus nunc ac augue. Integer tincidunt. Donec mollis hendrerit risus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Sed hendrerit. Curabitur at lacus ac velit ornare lobortis. Fusce a quam. Phasellus consectetuer vestibulum elit. Donec sodales sagittis magna. In hac habitasse platea dictumst. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Phasellus accumsan cursus velit. Nunc nec neque.</p>
<p>Fusce a quam. Duis leo. Donec sodales sagittis magna.</p>
<p>Nunc nec neque. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Duis leo. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Donec sodales sagittis magna. Curabitur ullamcorper ultricies nisi. Etiam ultricies nisi vel augue. Fusce a quam. Phasellus consectetuer vestibulum elit. Vestibulum dapibus nunc ac augue. Donec mollis hendrerit risus. Pellentesque ut neque. Phasellus accumsan cursus velit. Curabitur at lacus ac velit ornare lobortis. Integer tincidunt.</p>
<p>Integer tincidunt. Donec sodales sagittis magna.</p>
<p>Curabitur at lacus ac velit ornare lobortis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.</p>
', 4, '2019-10-10 23:45:10', 2138, 0);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (223, 'Sed hendrerit.', '/sed-hendrerit', '/media/nature/033a88d2-5b3b-42b0-beff-1891719b7efb.jpg', '<p>Sed hendrerit. Sed hendrerit. Sed hendrerit.</p>', '<p>Sed hendrerit. Sed hendrerit. Sed hendrerit.</p>
<p>In hac habitasse platea dictumst. Sed hendrerit. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Etiam rhoncus. Nullam dictum felis eu pede mollis pretium. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. In turpis. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Maecenas nec odio et ante tincidunt tempus. Ut non enim eleifend felis pretium feugiat.</p>
<p>In hac habitasse platea dictumst. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Vestibulum fringilla pede sit amet augue.</p>
<p>Vestibulum fringilla pede sit amet augue. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Suspendisse feugiat. Sed hendrerit. Quisque malesuada placerat nisl. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. In hac habitasse platea dictumst. Curabitur a felis in nunc fringilla tristique. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui.</p>
<img class="float-center" src="/media/nature/aa07a102-575f-43f4-89ad-85ca00d32ae0.jpg" alt="400x160" /><br/>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
<p>In turpis. In ac felis quis tortor malesuada pretium. Suspendisse feugiat. Sed hendrerit. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
', 5, '2020-02-22 12:15:10', 2356, 5);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (224, 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.', '/in-enim-justo-rhoncus-ut-imperdiet-a-venenatis-vitae-justo', '/media/nature/cdd99d52-b12b-4d00-ab24-08250278f2d7.jpg', '<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae</p>', '<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In enim justo, rhoncus ut, imperdiet a, venenatis vitae</p>
<p>Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
<p></p>
<p>Praesent adipiscing. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Etiam sit amet orci eget eros faucibus tincidunt. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Aenean imperdiet. Cras ultricies mi eu turpis hendrerit fringilla. Maecenas malesuada. Phasellus accumsan cursus velit. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Donec vitae sapien ut libero venenatis faucibus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Etiam rhoncus. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Maecenas nec odio et ante tincidunt tempus.</p>
<p>Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Donec vitae sapien ut libero venenatis faucibus.</p>
<p>Cras ultricies mi eu turpis hendrerit fringilla. Donec vitae sapien ut libero venenatis faucibus.</p>
<img class="float-center" src="/media/nature/ab0d7979-0ea9-4157-8d28-0231670275ed.jpg" alt="300x120" /><br/>
<p>Aenean imperdiet.</p>
<p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Etiam rhoncus. Donec vitae sapien ut libero venenatis faucibus. Maecenas nec odio et ante tincidunt tempus. Etiam sit amet orci eget eros faucibus tincidunt. Cras ultricies mi eu turpis hendrerit fringilla. Phasellus accumsan cursus velit. Praesent egestas neque eu enim.</p>
<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Phasellus accumsan cursus velit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Maecenas malesuada. Maecenas nec odio et ante tincidunt tempus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Cras ultricies mi eu turpis hendrerit fringilla. Praesent egestas neque eu enim. Aenean imperdiet. Etiam rhoncus. Praesent adipiscing.</p>
<p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Maecenas nec odio et ante tincidunt tempus. Etiam sit amet orci eget eros faucibus tincidunt. Phasellus accumsan cursus velit. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Cras ultricies mi eu turpis hendrerit fringilla. Aenean imperdiet. Praesent adipiscing.</p>
', 5, '2019-12-15 23:26:11', 273, 6);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (225, 'Aenean massa.', '/aenean-massa', '/media/animals/63bf72bc-81f2-44b5-9f08-371b82cbed56.jpg', '<p>Aenean massa. Aenean massa. Aenean massa.</p>', '<p>Aenean massa. Aenean massa. Aenean massa.</p>
<p>Mauris sollicitudin fermentum libero. Aenean imperdiet. Fusce fermentum.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Phasellus a est.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Mauris sollicitudin fermentum libero. Quisque rutrum. Etiam ut purus mattis mauris sodales aliquam.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Quisque rutrum. Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero.</p>
<p>Aenean imperdiet. Aenean massa. Quisque rutrum. Phasellus a est. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Etiam ut purus mattis mauris sodales aliquam.</p>
<p>Mauris sollicitudin fermentum libero. Quisque rutrum. Phasellus a est. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce fermentum. Aenean imperdiet. Etiam ut purus mattis mauris sodales aliquam.</p>
<p></p>
<p>Quisque rutrum. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce fermentum. Aenean imperdiet. Phasellus a est. Etiam ut purus mattis mauris sodales aliquam.</p>
<img class="float-center" src="/media/animals/059a4596-610a-450d-bf7c-edb133b0f541.jpg" alt="500x180" /><br/>
<p>Etiam ut purus mattis mauris sodales aliquam. Fusce fermentum. Mauris sollicitudin fermentum libero.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus.</p>
<p>Quisque rutrum. Aenean massa. Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Phasellus a est. Fusce fermentum.</p>
<p></p>
<p>Quisque rutrum. Mauris sollicitudin fermentum libero. Etiam ut purus mattis mauris sodales aliquam. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus.</p>
<p>Fusce fermentum.</p>
<p>Aenean imperdiet. Aenean massa. Phasellus a est. Mauris sollicitudin fermentum libero. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Etiam ut purus mattis mauris sodales aliquam.</p>
<img class="float-center" src="/media/animals/0452fd88-aea7-444a-9c78-2b9139bf85c1.jpg" alt="200x100" /><br/>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Mauris sollicitudin fermentum libero. Phasellus a est.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Quisque rutrum. Aenean imperdiet. Aenean massa. Fusce fermentum.</p>
<p>Phasellus a est.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Aenean massa. Phasellus a est. Mauris sollicitudin fermentum libero. Quisque rutrum. Etiam ut purus mattis mauris sodales aliquam.</p>
<p>Aenean imperdiet. Etiam ut purus mattis mauris sodales aliquam. Fusce fermentum.</p>
<p>Quisque rutrum. Aenean massa. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Aenean imperdiet. Phasellus a est.</p>
<p>Fusce fermentum. Phasellus a est. Aenean imperdiet.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Quisque rutrum.</p>
<p></p>
<p></p>
<p>Aenean massa.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce fermentum. Quisque rutrum. Aenean massa. Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Phasellus a est.</p>
<p></p>
<p>Etiam ut purus mattis mauris sodales aliquam. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Quisque rutrum. Aenean massa. Fusce fermentum. Mauris sollicitudin fermentum libero.</p>
<img class="float-center" src="/media/animals/70b4669f-0c2b-486b-9ffa-8e2709ada50d.jpg" alt="500x100" /><br/>
<p>Mauris sollicitudin fermentum libero. Etiam ut purus mattis mauris sodales aliquam. Quisque rutrum. Aenean massa.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Aenean massa. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce fermentum. Phasellus a est. Aenean imperdiet.</p>
<p>Etiam ut purus mattis mauris sodales aliquam. Aenean massa. Aenean imperdiet. Quisque rutrum.</p>
<p>Quisque rutrum.</p>
<p></p>
<p>Phasellus a est. Mauris sollicitudin fermentum libero. Quisque rutrum.</p>
<p>Quisque rutrum. Etiam ut purus mattis mauris sodales aliquam. Aenean imperdiet.</p>
<p>Aenean massa. Mauris sollicitudin fermentum libero. Fusce fermentum. Phasellus a est. Aenean imperdiet.</p>
<img class="float-center" src="/media/animals/c10f6519-cbf4-455e-97fa-15e62031f87e.jpg" alt="400x140" /><br/>
<p>Etiam ut purus mattis mauris sodales aliquam. Phasellus a est. Mauris sollicitudin fermentum libero. Aenean imperdiet. Fusce fermentum.</p>
<p>Mauris sollicitudin fermentum libero. Aenean massa. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Aenean imperdiet. Quisque rutrum. Etiam ut purus mattis mauris sodales aliquam. Phasellus a est.</p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Phasellus a est. Mauris sollicitudin fermentum libero. Aenean imperdiet. Fusce fermentum.</p>
<p>Quisque rutrum. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Aenean imperdiet. Phasellus a est. Etiam ut purus mattis mauris sodales aliquam. Fusce fermentum.</p>
<p>Phasellus a est. Fusce fermentum. Etiam ut purus mattis mauris sodales aliquam. Mauris sollicitudin fermentum libero. Aenean massa. Quisque rutrum.</p>
', 4, '2020-03-12 05:12:12', 7720, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (226, 'Phasellus a est.', '/phasellus-a-est', '/media/animals/8f190d52-db63-4fdb-a912-be56db6234c0.jpg', '<p>Phasellus a est. Phasellus a est. Phasellus a est. Phasellus a est. Phasellus a est.</p>', '<p>Phasellus a est. Phasellus a est. Phasellus a est. Phasellus a est. Phasellus a est.</p>
<p>Maecenas malesuada. Nam pretium turpis et arcu. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Curabitur a felis in nunc fringilla tristique. Morbi mollis tellus ac sapien. Fusce pharetra convallis urna. Sed aliquam ultrices mauris. Phasellus gravida semper nisi. Phasellus a est.</p>
<p>Maecenas vestibulum mollis diam. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Sed aliquam ultrices mauris. Duis leo. Curabitur a felis in nunc fringilla tristique. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Maecenas malesuada. Phasellus a est. Morbi mollis tellus ac sapien. Donec sodales sagittis magna. Fusce pharetra convallis urna. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Phasellus dolor.</p>
<p>Donec sodales sagittis magna. Fusce pharetra convallis urna. Phasellus gravida semper nisi. Sed aliquam ultrices mauris. Duis leo. Nam pretium turpis et arcu. Phasellus dolor.</p>
<p>Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Maecenas vestibulum mollis diam. Morbi mollis tellus ac sapien. Maecenas malesuada. Fusce pharetra convallis urna. Nam pretium turpis et arcu. Phasellus dolor. Sed aliquam ultrices mauris. Duis leo. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<p>Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Phasellus a est. Curabitur a felis in nunc fringilla tristique. Maecenas vestibulum mollis diam. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Fusce pharetra convallis urna. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Donec sodales sagittis magna. Maecenas malesuada. Duis leo. In consectetuer turpis ut velit. Phasellus gravida semper nisi. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus dolor. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p></p>
<p>Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Phasellus dolor. Curabitur a felis in nunc fringilla tristique. Nam pretium turpis et arcu. Sed aliquam ultrices mauris. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Morbi mollis tellus ac sapien. Phasellus dolor. Fusce pharetra convallis urna. Curabitur a felis in nunc fringilla tristique. Duis leo. Nam pretium turpis et arcu. Phasellus a est. Sed aliquam ultrices mauris. In consectetuer turpis ut velit. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Phasellus gravida semper nisi. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Maecenas malesuada. Donec sodales sagittis magna.</p>
<img class="float-center" src="/media/animals/48bee477-3b52-4244-9ebb-3564941562e1.jpg" alt="300x260" /><br/>
<p>Maecenas malesuada. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Phasellus gravida semper nisi. Curabitur a felis in nunc fringilla tristique. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Morbi mollis tellus ac sapien. Maecenas vestibulum mollis diam. In consectetuer turpis ut velit. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Sed aliquam ultrices mauris.</p>
<p>Phasellus dolor. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Duis leo. In consectetuer turpis ut velit. Curabitur a felis in nunc fringilla tristique. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Fusce pharetra convallis urna. Phasellus a est. Sed aliquam ultrices mauris. Maecenas malesuada. Maecenas vestibulum mollis diam. Donec sodales sagittis magna.</p>
<p>Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Phasellus gravida semper nisi. Morbi mollis tellus ac sapien. Sed aliquam ultrices mauris. Phasellus a est. Curabitur a felis in nunc fringilla tristique. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Maecenas vestibulum mollis diam. Donec sodales sagittis magna. In consectetuer turpis ut velit. Maecenas malesuada. Duis leo. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Phasellus dolor.</p>
<p>Curabitur a felis in nunc fringilla tristique. Duis leo. Maecenas malesuada. Morbi mollis tellus ac sapien. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Maecenas vestibulum mollis diam. Phasellus gravida semper nisi. Fusce pharetra convallis urna. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Sed aliquam ultrices mauris. Donec sodales sagittis magna. Nam pretium turpis et arcu. Phasellus dolor. Phasellus a est. In consectetuer turpis ut velit.</p>
<p>Nam pretium turpis et arcu. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Phasellus gravida semper nisi. Maecenas vestibulum mollis diam. Maecenas malesuada. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Fusce pharetra convallis urna. Phasellus dolor. Duis leo.</p>
<p>Curabitur a felis in nunc fringilla tristique. Sed aliquam ultrices mauris. Phasellus a est. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Donec sodales sagittis magna.</p>
<p>Curabitur a felis in nunc fringilla tristique. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus gravida semper nisi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Fusce pharetra convallis urna. Maecenas malesuada. Maecenas vestibulum mollis diam. Sed aliquam ultrices mauris. Phasellus dolor. Nam pretium turpis et arcu. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Duis leo. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. In consectetuer turpis ut velit.</p>
<p>Nam pretium turpis et arcu. Phasellus gravida semper nisi. Curabitur a felis in nunc fringilla tristique. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.</p>
<p>Curabitur a felis in nunc fringilla tristique. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Donec sodales sagittis magna. Morbi mollis tellus ac sapien. In consectetuer turpis ut velit. Duis leo. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus dolor.</p>
<p>Phasellus gravida semper nisi. Maecenas vestibulum mollis diam. Curabitur a felis in nunc fringilla tristique. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Fusce pharetra convallis urna. Phasellus dolor. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Maecenas malesuada. Morbi mollis tellus ac sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Duis leo.</p>
<p>Fusce pharetra convallis urna. Duis leo. Donec sodales sagittis magna. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. In consectetuer turpis ut velit. Maecenas malesuada. Phasellus a est. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Maecenas vestibulum mollis diam. Nam pretium turpis et arcu. Sed aliquam ultrices mauris. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<img class="float-center" src="/media/animals/98560c78-dc89-4133-940f-416540df4ccd.jpg" alt="300x280" /><br/>
<p>Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Phasellus a est. Phasellus gravida semper nisi. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Curabitur a felis in nunc fringilla tristique. Maecenas vestibulum mollis diam.</p>
<p>Phasellus gravida semper nisi. Fusce pharetra convallis urna. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Maecenas vestibulum mollis diam.</p>
<p>Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi.</p>
<p>Donec sodales sagittis magna. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Curabitur a felis in nunc fringilla tristique. Nam pretium turpis et arcu. Sed aliquam ultrices mauris. Morbi mollis tellus ac sapien. Maecenas malesuada. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Fusce pharetra convallis urna. In consectetuer turpis ut velit. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Phasellus gravida semper nisi.</p>
<p>Phasellus a est. In consectetuer turpis ut velit. Sed aliquam ultrices mauris. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Phasellus dolor. Duis leo. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Maecenas vestibulum mollis diam.</p>
<p>Phasellus dolor. Maecenas vestibulum mollis diam. In consectetuer turpis ut velit. Fusce pharetra convallis urna. Curabitur a felis in nunc fringilla tristique.</p>
<p>Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. In consectetuer turpis ut velit. Maecenas malesuada. Phasellus a est. Phasellus gravida semper nisi. Donec sodales sagittis magna. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<img class="float-center" src="/media/animals/fb8fbe16-18a8-47e7-b813-46ccfd4c0a5a.jpg" alt="300x240" /><br/>
<p>Maecenas vestibulum mollis diam. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Phasellus gravida semper nisi. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. In consectetuer turpis ut velit. Sed aliquam ultrices mauris. Morbi mollis tellus ac sapien. Phasellus a est.</p>
<p>Phasellus gravida semper nisi.</p>
<p>Maecenas malesuada. Duis leo. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Sed aliquam ultrices mauris. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Maecenas vestibulum mollis diam. Phasellus a est. In consectetuer turpis ut velit. Phasellus gravida semper nisi. Curabitur a felis in nunc fringilla tristique. Morbi mollis tellus ac sapien. Donec sodales sagittis magna. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Fusce pharetra convallis urna.</p>
<p>Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus gravida semper nisi. Maecenas malesuada. Morbi mollis tellus ac sapien. Curabitur a felis in nunc fringilla tristique. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Fusce pharetra convallis urna. Duis leo. Phasellus dolor. Sed aliquam ultrices mauris. Phasellus a est. Nam pretium turpis et arcu. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. In consectetuer turpis ut velit. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Donec sodales sagittis magna. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.</p>
<p>Sed aliquam ultrices mauris. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Morbi mollis tellus ac sapien. Duis leo. Donec sodales sagittis magna. Maecenas vestibulum mollis diam. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus dolor. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Maecenas malesuada. Curabitur a felis in nunc fringilla tristique.</p>
<p>Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Phasellus gravida semper nisi. In consectetuer turpis ut velit.</p>
', 4, '2019-11-28 13:46:13', 1025, 2);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (227, 'Aenean imperdiet.', '/aenean-imperdiet', '/media/tech/027d0e46-8c46-4f49-8980-045f3ba86a30.jpg', '<p>Aenean imperdiet. Aenean imperdiet. Aenean imperdiet. Aenean imperdiet.</p>', '<p>Aenean imperdiet. Aenean imperdiet. Aenean imperdiet. Aenean imperdiet.</p>
<p>Curabitur at lacus ac velit ornare lobortis. Nullam vel sem. Nam eget dui. Pellentesque ut neque. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Aenean imperdiet. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo.</p>
<p>Aenean ut eros et nisl sagittis vestibulum. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Curabitur at lacus ac velit ornare lobortis. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Quisque malesuada placerat nisl. Pellentesque ut neque. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nam eget dui. Aenean imperdiet. Nullam vel sem. Etiam imperdiet imperdiet orci. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero.</p>
<p>Quisque malesuada placerat nisl. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Etiam imperdiet imperdiet orci. Aenean imperdiet. Pellentesque ut neque. Nam eget dui.</p>
<p>Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Nullam vel sem. Aenean imperdiet. Etiam imperdiet imperdiet orci. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<p>Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Aenean imperdiet. Aenean ut eros et nisl sagittis vestibulum. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nullam vel sem. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Etiam imperdiet imperdiet orci.</p>
<p>Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Nam eget dui. Sed in libero ut nibh placerat accumsan. Etiam imperdiet imperdiet orci. Aenean imperdiet. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo.</p>
<p>Etiam imperdiet imperdiet orci. Sed in libero ut nibh placerat accumsan. Aenean ut eros et nisl sagittis vestibulum. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero.</p>
<p>Curabitur at lacus ac velit ornare lobortis. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Sed in libero ut nibh placerat accumsan. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Nam eget dui. Aenean ut eros et nisl sagittis vestibulum. Etiam imperdiet imperdiet orci.</p>
<p>Etiam imperdiet imperdiet orci. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Quisque malesuada placerat nisl. Nullam vel sem. Aenean imperdiet. Curabitur at lacus ac velit ornare lobortis. Aenean ut eros et nisl sagittis vestibulum. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Pellentesque ut neque.</p>
', 4, '2019-12-03 21:51:13', 8966, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (228, 'Donec posuere vulputate arcu.', '/donec-posuere-vulputate-arcu', '/media/arch/e2aade5e-539b-4b24-a7c4-fb7c31f682d1.jpg', '<p>Donec posuere vulputate arcu. Donec posuere vulputate arcu. Donec posuere vulputate arcu. Donec posuere vulputate arcu.</p>', '<p>Donec posuere vulputate arcu. Donec posuere vulputate arcu. Donec posuere vulputate arcu. Donec posuere vulputate arcu.</p>
<p>Maecenas malesuada. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Donec posuere vulputate arcu. Nunc nec neque. Sed lectus. Nullam cursus lacinia erat. Maecenas vestibulum mollis diam. Praesent egestas neque eu enim. Morbi mollis tellus ac sapien. In hac habitasse platea dictumst.</p>
<p></p>
<p>Morbi mollis tellus ac sapien. Nullam cursus lacinia erat. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Praesent egestas neque eu enim. Donec posuere vulputate arcu. Sed lectus. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Nulla consequat massa quis enim. In hac habitasse platea dictumst. Maecenas vestibulum mollis diam. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nunc nec neque.</p>
<p>Nunc nec neque.</p>
<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.</p>
<p>In hac habitasse platea dictumst. Praesent egestas neque eu enim. Donec posuere vulputate arcu. Nulla consequat massa quis enim. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Sed lectus. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Nullam cursus lacinia erat. Fusce risus nisl, viverra et, tempor et, pretium in, sapien.</p>
<p>Donec posuere vulputate arcu. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nulla consequat massa quis enim. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Nunc nec neque. Nullam cursus lacinia erat.</p>
<p>In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Donec posuere vulputate arcu. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Sed lectus.</p>
', 4, '2019-11-01 07:07:13', 153, 4);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (229, 'Praesent ac massa at ligula laoreet iaculis.', '/praesent-ac-massa-at-ligula-laoreet-iaculis', '/media/tech/3e1372c7-409b-4280-962f-2a1f3a7bf155.jpg', '<p>Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis.</p>', '<p>Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis. Praesent ac massa at ligula laoreet iaculis.</p>
<p>Aenean vulputate eleifend tellus. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Nulla sit amet est. Phasellus a est. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Praesent egestas neque eu enim. Morbi ac felis. Praesent ac massa at ligula laoreet iaculis.</p>
<p>Phasellus a est. Nulla sit amet est. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Morbi ac felis. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p>Donec elit libero, sodales nec, volutpat a, suscipit non, turpis.</p>
<p></p>
', 4, '2020-06-03 17:11:14', 3861, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (230, 'Donec posuere vulputate arcu.', '/donec-posuere-vulputate-arcu', '/media/animals/ec165820-3116-4468-985d-a6c87cb1223f.jpg', '<p>Donec posuere vulputate arcu.</p>', '<p>Donec posuere vulputate arcu.</p>
<p>Nunc interdum lacus sit amet orci. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Vestibulum facilisis, purus nec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor.</p>
<p>Curabitur nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Donec posuere vulputate arcu. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Nunc interdum lacus sit amet orci. Donec mollis hendrerit risus.</p>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Donec posuere vulputate arcu.</p>
', 4, '2019-09-11 09:26:14', 9785, 0);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (231, 'Phasellus consectetuer vestibulum elit.', '/phasellus-consectetuer-vestibulum-elit', '/media/animals/19d91958-c4e3-41d8-b822-86eb20e725bc.jpg', '<p>Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit.</p>', '<p>Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit. Phasellus consectetuer vestibulum elit.</p>
<p>Fusce fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut eros et nisl sagittis vestibulum. Ut varius tincidunt libero.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Ut varius tincidunt libero. Fusce fermentum. Phasellus consectetuer vestibulum elit.</p>
<p>Ut varius tincidunt libero. Aenean ut eros et nisl sagittis vestibulum. Phasellus consectetuer vestibulum elit. Fusce fermentum.</p>
<p>Aenean ut eros et nisl sagittis vestibulum. Fusce fermentum. Ut varius tincidunt libero. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque ut neque. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.</p>
<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque ut neque.</p>
', 4, '2019-08-15 12:29:14', 8204, 4);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (232, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', '/cum-sociis-natoque-penatibus-et-magnis-dis-parturient-montes-nascetur-ridiculus', '/media/arch/972c2c95-85bc-457e-8b6b-ea045bdf53e8.jpg', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus</p>', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus</p>
<p>Sed aliquam ultrices mauris. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla sit amet est. Donec venenatis vulputate lorem. Fusce pharetra convallis urna. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Morbi ac felis. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nulla consequat massa quis enim. Integer tincidunt. Cras id dui. Nunc nulla. Nunc interdum lacus sit amet orci. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Etiam sit amet orci eget eros faucibus tincidunt. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Phasellus gravida semper nisi. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p>Integer tincidunt. Nunc nulla. Nunc interdum lacus sit amet orci. Ut tincidunt tincidunt erat.</p>
<p>Phasellus gravida semper nisi. Donec venenatis vulputate lorem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Nunc nulla. Morbi ac felis. Nunc interdum lacus sit amet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed aliquam ultrices mauris. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cras id dui. Etiam sit amet orci eget eros faucibus tincidunt.</p>
<p>Ut tincidunt tincidunt erat. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nulla sit amet est. Nunc interdum lacus sit amet orci. Etiam sit amet orci eget eros faucibus tincidunt. Nulla consequat massa quis enim. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Nunc nulla. Cras id dui. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Sed aliquam ultrices mauris. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus.</p>
<p>Nunc interdum lacus sit amet orci. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Morbi ac felis. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Fusce pharetra convallis urna.</p>
<p>Integer tincidunt. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Cras id dui. Sed aliquam ultrices mauris.</p>
<img class="float-center" src="/media/arch/311ec1c7-fd7b-44ab-b21e-85da4af00ce3.jpg" alt="400x200" /><br/>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Phasellus gravida semper nisi. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Nulla consequat massa quis enim. Nunc interdum lacus sit amet orci.</p>
<p>Cras id dui. Sed aliquam ultrices mauris. Ut tincidunt tincidunt erat. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Morbi ac felis. Donec venenatis vulputate lorem. Etiam sit amet orci eget eros faucibus tincidunt. Fusce pharetra convallis urna. Nunc nulla. Integer tincidunt. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Nulla consequat massa quis enim. Nunc interdum lacus sit amet orci. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
<p>Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Morbi ac felis. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Nulla consequat massa quis enim. Sed aliquam ultrices mauris. Donec venenatis vulputate lorem. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Phasellus gravida semper nisi. Ut tincidunt tincidunt erat. Nulla sit amet est.</p>
<p>Nulla consequat massa quis enim. Cras id dui. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Phasellus gravida semper nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Ut tincidunt tincidunt erat. Sed aliquam ultrices mauris.</p>
<p>Integer tincidunt. Nunc nulla. Fusce pharetra convallis urna. Nulla sit amet est. Nunc interdum lacus sit amet orci. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Etiam sit amet orci eget eros faucibus tincidunt. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Morbi ac felis. Phasellus gravida semper nisi. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Donec venenatis vulputate lorem. Cras id dui. Ut tincidunt tincidunt erat. Sed aliquam ultrices mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus</p>
<p>Cras id dui. Nulla consequat massa quis enim. Phasellus gravida semper nisi. Etiam sit amet orci eget eros faucibus tincidunt.</p>
<p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Donec venenatis vulputate lorem. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Ut tincidunt tincidunt erat. Cras id dui. Phasellus gravida semper nisi. Nunc interdum lacus sit amet orci. Morbi ac felis. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Fusce pharetra convallis urna. Sed aliquam ultrices mauris. Nulla sit amet est. Nunc nulla. Etiam sit amet orci eget eros faucibus tincidunt. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p>Donec venenatis vulputate lorem. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Morbi ac felis. Sed aliquam ultrices mauris. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Nulla consequat massa quis enim. Nunc interdum lacus sit amet orci. Fusce pharetra convallis urna.</p>
<img class="float-center" src="/media/arch/e18837a3-dbc1-42fa-9625-6f29b9996ac7.jpg" alt="600x280" /><br/>
<p>Phasellus gravida semper nisi. Etiam sit amet orci eget eros faucibus tincidunt. Donec venenatis vulputate lorem. Fusce pharetra convallis urna. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Nulla sit amet est. Ut tincidunt tincidunt erat. Nulla consequat massa quis enim. Integer tincidunt. Sed aliquam ultrices mauris. Morbi ac felis. Cras id dui. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.</p>
<p>Ut tincidunt tincidunt erat. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Morbi ac felis. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Integer tincidunt. Fusce pharetra convallis urna. Sed aliquam ultrices mauris.</p>
<p>Nulla sit amet est. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Integer tincidunt. Donec venenatis vulputate lorem. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Morbi ac felis. Nunc interdum lacus sit amet orci. Fusce pharetra convallis urna. Nulla consequat massa quis enim. Sed aliquam ultrices mauris. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Cras id dui. Etiam sit amet orci eget eros faucibus tincidunt. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.</p>
<p></p>
<p>Phasellus gravida semper nisi. Nunc nulla. Nunc interdum lacus sit amet orci. Integer tincidunt. Donec venenatis vulputate lorem. Morbi ac felis. Sed aliquam ultrices mauris. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nulla consequat massa quis enim. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Fusce pharetra convallis urna. Ut tincidunt tincidunt erat. Nulla sit amet est. Cras id dui. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
<p>Morbi ac felis. Nunc interdum lacus sit amet orci. Nunc nulla. Phasellus gravida semper nisi. Nulla consequat massa quis enim. Nulla sit amet est. Ut tincidunt tincidunt erat. Etiam sit amet orci eget eros faucibus tincidunt. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Fusce pharetra convallis urna.</p>
', 4, '2020-01-04 19:59:15', 5461, 5);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (233, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu', '/pellentesque-habitant-morbi-tristique-senectus-et-netus-et-malesuada-fames-ac-tu', '/media/animals/e68dc88d-347c-4514-bc6f-c3a599c9d3f3.jpg', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu</p>', '<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu</p>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Phasellus blandit leo ut odio. Vestibulum ullamcorper mauris at ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu</p>
<img class="float-center" src="/media/animals/050e9deb-f6b5-4708-b682-01e3a2e77fac.jpg" alt="300x240" /><br/>
<p>Aenean viverra rhoncus pede. Vestibulum ullamcorper mauris at ligula. Maecenas vestibulum mollis diam. Phasellus blandit leo ut odio.</p>
<p></p>
<p>In consectetuer turpis ut velit.</p>
<p>Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. In consectetuer turpis ut velit. Maecenas vestibulum mollis diam. Vestibulum ullamcorper mauris at ligula. Phasellus blandit leo ut odio. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Aenean viverra rhoncus pede.</p>
<p></p>
<p>Maecenas vestibulum mollis diam. Aenean viverra rhoncus pede. Vestibulum ullamcorper mauris at ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Phasellus blandit leo ut odio. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula.</p>
<p>Maecenas vestibulum mollis diam. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu</p>
<p>Vestibulum ullamcorper mauris at ligula. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. In consectetuer turpis ut velit. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Phasellus blandit leo ut odio. Maecenas vestibulum mollis diam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>In consectetuer turpis ut velit. Maecenas vestibulum mollis diam. Vestibulum ullamcorper mauris at ligula. Phasellus blandit leo ut odio. Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.</p>
<img class="float-center" src="/media/animals/56c02ba2-8c6c-48db-a1d3-173cf3f91059.jpg" alt="400x120" /><br/>
<p>Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Phasellus blandit leo ut odio. Aenean viverra rhoncus pede. In consectetuer turpis ut velit. Vestibulum ullamcorper mauris at ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu</p>
<p>Vestibulum ullamcorper mauris at ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Phasellus blandit leo ut odio.</p>
<p>Maecenas vestibulum mollis diam. Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Vestibulum ullamcorper mauris at ligula.</p>
<p></p>
<p></p>
<p>Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. In consectetuer turpis ut velit. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
<p>Maecenas vestibulum mollis diam. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Vestibulum ullamcorper mauris at ligula.</p>
<p>Maecenas vestibulum mollis diam. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Phasellus blandit leo ut odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Vestibulum ullamcorper mauris at ligula.</p>
<p>Aenean viverra rhoncus pede. Vestibulum ullamcorper mauris at ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas vestibulum mollis diam. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Vestibulum ullamcorper mauris at ligula. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Phasellus blandit leo ut odio. Maecenas vestibulum mollis diam. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.</p>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<img class="float-center" src="/media/animals/6c8a9bae-4317-4460-afb6-a81df24f25e4.jpg" alt="200x100" /><br/>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Phasellus blandit leo ut odio. Aenean viverra rhoncus pede. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. In consectetuer turpis ut velit.</p>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In consectetuer turpis ut velit. Aenean viverra rhoncus pede. Vestibulum ullamcorper mauris at ligula. Phasellus blandit leo ut odio. Maecenas vestibulum mollis diam.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Vestibulum ullamcorper mauris at ligula. Maecenas vestibulum mollis diam. Aenean viverra rhoncus pede. Phasellus blandit leo ut odio. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.</p>
<p>Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Vestibulum ullamcorper mauris at ligula. Aenean viverra rhoncus pede. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas vestibulum mollis diam.</p>
<p>Aenean viverra rhoncus pede. Vestibulum ullamcorper mauris at ligula. Phasellus blandit leo ut odio.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Vestibulum ullamcorper mauris at ligula. Maecenas vestibulum mollis diam. Aenean viverra rhoncus pede.</p>
<p>Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula.</p>
<p>Phasellus blandit leo ut odio. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Vestibulum ullamcorper mauris at ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. In consectetuer turpis ut velit. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Phasellus blandit leo ut odio. Aenean viverra rhoncus pede.</p>
<img class="float-center" src="/media/animals/906f6bac-0dd9-4a1f-aa95-330e650e22a3.jpg" alt="300x280" /><br/>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In consectetuer turpis ut velit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Maecenas vestibulum mollis diam. Phasellus blandit leo ut odio.</p>
<p>Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.</p>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
<p>Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.</p>
<p>Maecenas vestibulum mollis diam. In consectetuer turpis ut velit.</p>
<p>Maecenas vestibulum mollis diam. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo.</p>
<p>In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac tu Maecenas vestibulum mollis diam. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. In consectetuer turpis ut velit.</p>
', 4, '2020-03-09 07:05:16', 5906, 6);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (234, 'In auctor lobortis lacus.', '/in-auctor-lobortis-lacus', '/media/tech/17325c06-038b-4305-b9ac-67f5cd8ae8d1.jpg', '<p>In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus.</p>', '<p>In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus. In auctor lobortis lacus.</p>
<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nam pretium turpis et arcu. Maecenas nec odio et ante tincidunt tempus. Fusce a quam. In auctor lobortis lacus. Etiam rhoncus. Etiam ut purus mattis mauris sodales aliquam. Phasellus accumsan cursus velit.</p>
<p>In auctor lobortis lacus. Fusce a quam. Etiam rhoncus.</p>
<p>In auctor lobortis lacus. Etiam rhoncus. Fusce a quam. Phasellus accumsan cursus velit. Etiam ut purus mattis mauris sodales aliquam. Maecenas nec odio et ante tincidunt tempus. Donec posuere vulputate arcu. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Nam pretium turpis et arcu.</p>
<p>Maecenas nec odio et ante tincidunt tempus. Sed fringilla mauris sit amet nibh. Fusce a quam. Etiam ut purus mattis mauris sodales aliquam. Donec posuere vulputate arcu. Nam pretium turpis et arcu. Phasellus accumsan cursus velit. Etiam rhoncus.</p>
<p>In auctor lobortis lacus. Etiam ut purus mattis mauris sodales aliquam. Sed fringilla mauris sit amet nibh. Maecenas nec odio et ante tincidunt tempus. Nam pretium turpis et arcu. Phasellus accumsan cursus velit.</p>
', 4, '2019-08-06 01:38:16', 886, 2);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (235, 'Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.', '/aenean-tellus-metus-bibendum-sed-posuere-ac-mattis-non-nunc', '/media/animals/a8b0c458-b093-49c0-9aac-477fd404f2df.jpg', '<p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.</p>', '<p>Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.</p>
<p></p>
<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Etiam ut purus mattis mauris sodales aliquam. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc.</p>
', 4, '2019-10-01 12:41:16', 9484, 1);

INSERT INTO article (id, title, url, logo, "desc", content, id_category, created, views, comments)
VALUES (236, 'Cras ultricies mi eu turpis hendrerit fringilla.', '/cras-ultricies-mi-eu-turpis-hendrerit-fringilla', '/media/animals/23a43ef1-63da-4ed5-a5b1-546280258771.jpg', '<p>Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla.</p>', '<p>Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla. Cras ultricies mi eu turpis hendrerit fringilla.</p>
<p>Donec mollis hendrerit risus. Pellentesque posuere. Etiam imperdiet imperdiet orci. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Cras ultricies mi eu turpis hendrerit fringilla. Phasellus magna. In auctor lobortis lacus. Praesent egestas neque eu enim. Praesent blandit laoreet nibh. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nam eget dui. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Pellentesque ut neque. Etiam ut purus mattis mauris sodales aliquam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.</p>
<p>Phasellus magna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Etiam imperdiet imperdiet orci. Pellentesque ut neque. Praesent blandit laoreet nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Etiam ut purus mattis mauris sodales aliquam. Cras ultricies mi eu turpis hendrerit fringilla. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Praesent egestas neque eu enim. Pellentesque posuere. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Praesent congue erat at massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In auctor lobortis lacus. Nam eget dui. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc.</p>
<p>Praesent blandit laoreet nibh. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Phasellus magna. Pellentesque ut neque. Donec mollis hendrerit risus. Cras ultricies mi eu turpis hendrerit fringilla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent congue erat at massa. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Etiam imperdiet imperdiet orci. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Pellentesque posuere. Nam eget dui. In auctor lobortis lacus.</p>
<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Etiam imperdiet imperdiet orci. Praesent congue erat at massa. Pellentesque posuere. Phasellus magna. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Cras ultricies mi eu turpis hendrerit fringilla. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ut purus mattis mauris sodales aliquam. Praesent blandit laoreet nibh. Donec mollis hendrerit risus. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. In auctor lobortis lacus. Nam eget dui. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Praesent egestas neque eu enim. Pellentesque ut neque.</p>
<p>Praesent egestas neque eu enim. Etiam imperdiet imperdiet orci. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam eget dui. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Donec mollis hendrerit risus. Phasellus magna. Pellentesque ut neque. In auctor lobortis lacus. Pellentesque posuere. Cras ultricies mi eu turpis hendrerit fringilla. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis.</p>
', 4, '2020-01-28 21:12:16', 580, 5);

--
-- Data for table public.account (OID = 16422) (LIMIT 0,7)
--
INSERT INTO account (id, email, name, avatar, created)
VALUES (1, 'derrick@shilenko.net', 'Derrick', '/media/avatar/8cb37ebd-2bc0-40c4-bf89-3d66f1227b11.jpg', '2020-03-30 14:38:57');

INSERT INTO account (id, email, name, avatar, created)
VALUES (2, 'dean@shilenko.net', 'Dean', '/media/avatar/5a09e120-de23-491c-85a1-0a39a8766e2c.jpg', '2020-04-09 23:54:57');

INSERT INTO account (id, email, name, avatar, created)
VALUES (3, 'santiago@shilenko.net', 'Santiago', '/media/avatar/00437ac3-428b-478a-bfc9-edfc8fe83679.jpg', '2019-08-22 03:03:57');

INSERT INTO account (id, email, name, avatar, created)
VALUES (4, 'randal@shilenko.net', 'Randal', '/media/avatar/49f9d64b-bdd4-4f7e-bd2c-6a6cd02d8e08.jpg', '2020-02-22 10:46:57');

INSERT INTO account (id, email, name, avatar, created)
VALUES (5, 'clinton@shilenko.net', 'Clinton', '/media/avatar/b6d6ac3b-f799-4cf6-9a27-64a54e8870cd.jpg', '2020-06-06 16:44:58');

INSERT INTO account (id, email, name, avatar, created)
VALUES (6, 'randall@shilenko.net', 'Randall', '/media/avatar/a4c63abc-b025-4ae3-8ff5-c3c527ece269.jpg', '2020-04-01 02:43:58');

INSERT INTO account (id, email, name, avatar, created)
VALUES (7, 'douglas@shilenko.net', 'Douglas', '/media/avatar/bd60a457-03af-4ab9-8578-a501f24e8f38.jpg', '2019-10-21 10:45:58');

--
-- Data for table public.comment (OID = 16430) (LIMIT 0,94)
--
INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (1, 6, 200, 'Phasellus a est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In ac felis quis tortor malesuada pretium.', '2020-01-06 02:12:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (2, 5, 200, 'Pellentesque auctor neque nec urna. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.', '2020-02-09 19:29:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (3, 7, 200, 'Phasellus gravida semper nisi.', '2020-03-10 06:15:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (4, 4, 200, 'Proin faucibus arcu quis ante. Vestibulum ullamcorper mauris at ligula.', '2020-04-15 00:56:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (5, 2, 200, 'Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Integer tincidunt. Mauris sollicitudin fermentum libero. In consectetuer turpis ut velit.', '2020-04-21 23:14:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (6, 1, 200, 'Pellentesque auctor neque nec urna. Phasellus magna.', '2020-06-02 06:36:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (7, 4, 201, 'Sed aliquam ultrices mauris. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Pellentesque ut neque.', '2020-05-26 13:27:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (8, 2, 201, 'Cras id dui.', '2020-05-31 00:01:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (9, 3, 201, 'Phasellus magna. Morbi mattis ullamcorper velit. Fusce vulputate eleifend sapien. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Praesent nec nisl a purus blandit viverra. Phasellus viverra nulla ut metus varius laoreet.', '2020-06-05 13:32:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (10, 6, 201, 'Nunc nec neque.', '2020-06-08 04:39:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (11, 7, 201, 'Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi.', '2020-06-15 07:47:59');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (12, 4, 202, 'Nunc nulla. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Pellentesque auctor neque nec urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Fusce vel dui.', '2020-05-28 03:33:00');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (13, 5, 203, 'Vestibulum fringilla pede sit amet augue. Fusce fermentum. Etiam feugiat lorem non metus.', '2020-02-22 18:59:00');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (14, 2, 203, 'Sed in libero ut nibh placerat accumsan. Praesent congue erat at massa. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Cras id dui.', '2020-02-27 00:24:00');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (15, 3, 203, 'Donec sodales sagittis magna. Cras dapibus.', '2020-05-18 12:51:00');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (16, 5, 205, 'Vestibulum dapibus nunc ac augue. In auctor lobortis lacus. Ut varius tincidunt libero. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.', '2019-08-04 23:53:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (17, 3, 205, 'Aenean ut eros et nisl sagittis vestibulum. Vestibulum ullamcorper mauris at ligula. Maecenas vestibulum mollis diam. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Quisque malesuada placerat nisl.', '2019-10-29 18:31:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (18, 2, 205, 'Vestibulum fringilla pede sit amet augue. Sed aliquam ultrices mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Fusce fermentum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras id dui.', '2020-01-04 00:54:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (19, 1, 205, 'Nunc nec neque. Proin faucibus arcu quis ante.', '2020-03-30 01:29:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (20, 7, 205, 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. In hac habitasse platea dictumst. Quisque rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.', '2020-06-06 15:44:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (21, 1, 206, 'Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Phasellus a est.', '2019-11-14 01:18:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (22, 5, 206, 'Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Proin faucibus arcu quis ante.', '2020-02-16 16:12:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (23, 4, 206, 'Vivamus quis mi. Sed lectus.', '2020-03-09 09:20:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (24, 2, 206, 'Proin faucibus arcu quis ante. Morbi mollis tellus ac sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci.', '2020-05-14 16:42:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (25, 1, 207, 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim.', '2020-03-20 11:19:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (26, 4, 207, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Praesent egestas neque eu enim. Suspendisse feugiat. Phasellus blandit leo ut odio. Vivamus elementum semper nisi.', '2020-05-20 14:49:02');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (27, 7, 208, 'Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Fusce vel dui. Vestibulum ullamcorper mauris at ligula.', '2020-01-11 23:18:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (28, 3, 209, 'Aenean massa. Nunc nonummy metus.', '2019-10-04 05:22:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (29, 6, 209, 'Fusce fermentum. Nam eget dui. Nullam cursus lacinia erat. Praesent egestas neque eu enim. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus.', '2019-12-15 22:50:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (30, 1, 209, 'Curabitur ullamcorper ultricies nisi. Aenean massa. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.', '2020-01-22 04:48:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (31, 2, 209, 'Etiam sit amet orci eget eros faucibus tincidunt. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Praesent blandit laoreet nibh.', '2020-04-12 15:48:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (32, 2, 210, 'Cras ultricies mi eu turpis hendrerit fringilla.', '2020-05-01 21:39:03');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (33, 1, 211, 'Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Praesent blandit laoreet nibh. Vivamus elementum semper nisi.', '2020-04-29 05:55:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (34, 1, 212, 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Aenean ut eros et nisl sagittis vestibulum.', '2020-01-10 20:11:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (35, 3, 212, 'Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nulla sit amet est.', '2020-04-21 16:32:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (36, 2, 212, 'Praesent adipiscing. Curabitur nisi.', '2020-05-31 06:12:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (37, 6, 213, 'Maecenas vestibulum mollis diam. Sed fringilla mauris sit amet nibh.', '2019-11-13 00:58:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (38, 3, 213, 'Aenean viverra rhoncus pede. Sed cursus turpis vitae tortor. Phasellus consectetuer vestibulum elit. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi.', '2020-06-10 00:55:04');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (39, 5, 214, 'Sed lectus. Ut varius tincidunt libero. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Phasellus gravida semper nisi. Aenean massa.', '2019-12-18 14:39:05');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (40, 7, 216, 'Praesent ac massa at ligula laoreet iaculis. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nulla consequat massa quis enim. In hac habitasse platea dictumst. Morbi ac felis.', '2019-07-18 23:55:07');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (41, 5, 218, 'Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Integer tincidunt.', '2020-04-22 13:50:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (42, 7, 218, 'Donec venenatis vulputate lorem. Quisque malesuada placerat nisl. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Nullam dictum felis eu pede mollis pretium.', '2020-05-13 20:32:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (43, 1, 218, 'Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Aenean massa. Praesent adipiscing. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum.', '2020-06-02 01:41:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (44, 4, 219, 'Vestibulum dapibus nunc ac augue. Fusce pharetra convallis urna. In consectetuer turpis ut velit. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Aenean massa. Vestibulum fringilla pede sit amet augue.', '2019-10-08 13:36:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (45, 1, 220, 'Ut varius tincidunt libero. Vestibulum ullamcorper mauris at ligula.', '2020-02-10 08:34:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (46, 2, 220, 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Fusce pharetra convallis urna. Ut tincidunt tincidunt erat. Vestibulum fringilla pede sit amet augue.', '2020-04-12 13:13:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (47, 7, 220, 'Proin faucibus arcu quis ante. Phasellus accumsan cursus velit. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Fusce a quam.', '2020-06-06 15:37:08');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (48, 3, 221, 'Curabitur nisi. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Sed fringilla mauris sit amet nibh. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed lectus. Sed aliquam ultrices mauris.', '2020-04-12 12:33:09');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (49, 5, 221, 'Morbi mattis ullamcorper velit. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi.', '2020-04-28 21:10:09');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (50, 2, 221, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Curabitur ullamcorper ultricies nisi. Maecenas nec odio et ante tincidunt tempus. Etiam feugiat lorem non metus.', '2020-05-16 20:45:09');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (51, 6, 221, 'Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Curabitur nisi. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Morbi ac felis. Cras ultricies mi eu turpis hendrerit fringilla.', '2020-06-17 02:46:09');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (52, 6, 223, 'Curabitur at lacus ac velit ornare lobortis. Morbi mattis ullamcorper velit.', '2020-03-02 17:05:10');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (53, 5, 223, 'In consectetuer turpis ut velit. Duis leo.', '2020-04-07 06:34:10');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (54, 2, 223, 'Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nam pretium turpis et arcu. Nulla sit amet est.', '2020-04-25 11:07:10');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (55, 7, 223, 'Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Aenean imperdiet.', '2020-05-08 05:05:10');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (56, 3, 223, 'Phasellus blandit leo ut odio. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Etiam ut purus mattis mauris sodales aliquam. Praesent blandit laoreet nibh. Curabitur nisi. Pellentesque auctor neque nec urna.', '2020-06-02 05:22:10');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (57, 1, 224, 'Etiam ut purus mattis mauris sodales aliquam. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Pellentesque posuere. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Fusce fermentum. Praesent blandit laoreet nibh.', '2019-12-31 22:15:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (58, 2, 224, 'Mauris sollicitudin fermentum libero.', '2020-01-29 02:50:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (59, 7, 224, 'Nunc nonummy metus.', '2020-02-28 12:06:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (60, 4, 224, 'Aenean imperdiet. Suspendisse feugiat. Donec posuere vulputate arcu. Nam eget dui. Nullam cursus lacinia erat. Sed fringilla mauris sit amet nibh.', '2020-03-21 17:42:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (61, 6, 224, 'Vivamus elementum semper nisi. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est.', '2020-04-18 14:56:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (62, 5, 224, 'Etiam ultricies nisi vel augue. Vivamus elementum semper nisi. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Phasellus consectetuer vestibulum elit. Phasellus gravida semper nisi. Curabitur ullamcorper ultricies nisi.', '2020-06-16 20:14:11');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (63, 4, 225, 'Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. Nulla sit amet est. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. Phasellus blandit leo ut odio. Nullam accumsan lorem in dui.', '2020-05-08 03:08:12');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (64, 2, 226, 'Donec sodales sagittis magna. Integer tincidunt.', '2020-01-17 12:40:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (65, 6, 226, 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Vivamus elementum semper nisi. Fusce pharetra convallis urna. Aenean vulputate eleifend tellus.', '2020-05-09 23:15:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (66, 5, 227, 'Etiam ut purus mattis mauris sodales aliquam. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Sed aliquam ultrices mauris.', '2019-12-07 12:56:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (67, 4, 228, 'Nullam accumsan lorem in dui. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris.', '2019-12-08 07:15:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (68, 5, 228, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.', '2020-01-02 11:48:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (69, 7, 228, 'Donec vitae sapien ut libero venenatis faucibus. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Fusce a quam. Phasellus magna. Phasellus gravida semper nisi. Ut tincidunt tincidunt erat.', '2020-04-18 16:56:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (70, 2, 228, 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Phasellus consectetuer vestibulum elit. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus.', '2020-04-27 14:07:13');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (71, 7, 229, 'Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Nullam dictum felis eu pede mollis pretium. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Praesent nec nisl a purus blandit viverra.', '2020-06-03 11:46:14');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (72, 4, 231, 'Phasellus nec sem in justo pellentesque facilisis. Aenean massa. In auctor lobortis lacus. Sed aliquam ultrices mauris.', '2019-09-13 07:30:14');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (73, 2, 231, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '2019-11-08 11:54:14');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (74, 5, 231, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2020-01-16 23:53:14');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (75, 1, 231, 'Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Phasellus consectetuer vestibulum elit. Vestibulum dapibus nunc ac augue. Fusce pharetra convallis urna. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula.', '2020-06-01 22:45:14');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (76, 2, 232, 'Phasellus accumsan cursus velit.', '2020-01-05 18:37:15');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (77, 4, 232, 'Donec mollis hendrerit risus. Phasellus viverra nulla ut metus varius laoreet.', '2020-03-02 12:59:15');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (78, 3, 232, 'Maecenas malesuada. Fusce convallis metus id felis luctus adipiscing. Nunc nec neque. Vestibulum volutpat pretium libero. Sed fringilla mauris sit amet nibh.', '2020-04-10 11:04:15');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (79, 1, 232, 'Etiam sit amet orci eget eros faucibus tincidunt. Pellentesque auctor neque nec urna. Cras dapibus. Etiam imperdiet imperdiet orci. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.', '2020-04-26 14:18:15');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (80, 6, 232, 'Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Morbi mattis ullamcorper velit. Etiam ut purus mattis mauris sodales aliquam.', '2020-05-31 06:59:15');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (81, 6, 233, 'Nunc nonummy metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Sed cursus turpis vitae tortor.', '2020-03-11 07:56:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (82, 3, 233, 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Vestibulum volutpat pretium libero. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Suspendisse feugiat. Nullam dictum felis eu pede mollis pretium. Aenean ut eros et nisl sagittis vestibulum.', '2020-04-02 18:36:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (83, 5, 233, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce pharetra convallis urna. Nullam accumsan lorem in dui. Phasellus a est. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Ut tincidunt tincidunt erat.', '2020-04-26 09:59:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (84, 7, 233, 'Morbi ac felis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Ut tincidunt tincidunt erat. Fusce vulputate eleifend sapien.', '2020-05-09 02:00:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (85, 4, 233, 'Phasellus a est. Curabitur vestibulum aliquam leo.', '2020-05-22 10:38:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (86, 1, 233, 'Aenean viverra rhoncus pede. In auctor lobortis lacus. Nullam quis ante. Aenean massa. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Fusce vel dui.', '2020-06-14 09:09:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (87, 4, 234, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '2019-10-27 05:31:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (88, 6, 234, 'In hac habitasse platea dictumst. Pellentesque ut neque. Ut varius tincidunt libero. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Nullam cursus lacinia erat. Nulla consequat massa quis enim.', '2020-04-13 14:52:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (89, 6, 235, 'Nunc nec neque. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Curabitur a felis in nunc fringilla tristique. Vivamus quis mi. Nunc nonummy metus. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit.', '2019-12-27 07:18:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (90, 6, 236, 'In turpis. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Ut non enim eleifend felis pretium feugiat.', '2020-02-17 19:25:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (91, 5, 236, 'In dui magna, posuere eget, vestibulum et, tempor auctor, justo. Nullam sagittis. Curabitur vestibulum aliquam leo. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Mauris sollicitudin fermentum libero.', '2020-03-05 21:07:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (92, 4, 236, 'Phasellus a est.', '2020-04-10 13:33:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (93, 1, 236, 'Ut varius tincidunt libero. Curabitur ullamcorper ultricies nisi. Nullam dictum felis eu pede mollis pretium. Duis leo. Maecenas nec odio et ante tincidunt tempus.', '2020-05-08 03:14:16');

INSERT INTO comment (id, id_account, id_article, content, created)
VALUES (94, 7, 236, 'In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Etiam ut purus mattis mauris sodales aliquam. Duis leo. Ut non enim eleifend felis pretium feugiat. Phasellus magna. Etiam imperdiet imperdiet orci.', '2020-06-13 09:24:16');

--
-- Definition for index comment_idx (OID = 16458) : 
--
CREATE INDEX comment_idx ON public.comment USING btree (id_article);
--
-- Definition for index article_idx (OID = 16459) : 
--
CREATE INDEX article_idx ON public.article USING btree (id_category);
--
-- Definition for index comment_idx1 (OID = 16460) : 
--
CREATE INDEX comment_idx1 ON public.comment USING btree (id_account);
--
-- Definition for index category_pkey (OID = 16407) : 
--
ALTER TABLE ONLY category
    ADD CONSTRAINT category_pkey
    PRIMARY KEY (id);
--
-- Definition for index category_url_key (OID = 16409) : 
--
ALTER TABLE ONLY category
    ADD CONSTRAINT category_url_key
    UNIQUE (url);
--
-- Definition for index article_pkey (OID = 16420) : 
--
ALTER TABLE ONLY article
    ADD CONSTRAINT article_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_pkey (OID = 16426) : 
--
ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey
    PRIMARY KEY (id);
--
-- Definition for index comment_pkey (OID = 16437) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey
    PRIMARY KEY (id);
--
-- Definition for index article_fk (OID = 16443) : 
--
ALTER TABLE ONLY article
    ADD CONSTRAINT article_fk
    FOREIGN KEY (id_category) REFERENCES category(id) ON UPDATE CASCADE ON DELETE RESTRICT;
--
-- Definition for index comment_fk (OID = 16448) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE RESTRICT;
--
-- Definition for index comment_fk1 (OID = 16453) : 
--
ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_fk1
    FOREIGN KEY (id_article) REFERENCES article(id) ON UPDATE CASCADE ON DELETE RESTRICT;
--
-- Definition for index account_email_key (OID = 16461) : 
--
ALTER TABLE ONLY account
    ADD CONSTRAINT account_email_key
    UNIQUE (email);
--
-- Data for sequence public.comment_seq (OID = 16439)
--
SELECT pg_catalog.setval('comment_seq', 94, true);
--
-- Data for sequence public.account_seq (OID = 16441)
--
SELECT pg_catalog.setval('account_seq', 7, true);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
