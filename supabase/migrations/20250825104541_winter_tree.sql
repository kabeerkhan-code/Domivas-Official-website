@@ .. @@
 ALTER TABLE consultation_requests ENABLE ROW LEVEL SECURITY;
 
-CREATE POLICY "Anyone can insert consultation requests"
+CREATE POLICY "Allow anonymous users to insert consultation requests"
   ON consultation_requests
   FOR INSERT
-  TO authenticated
+  TO anon
   WITH CHECK (true);
 
-CREATE POLICY "Authenticated users can read consultation requests"
+CREATE POLICY "Allow authenticated users to read consultation requests"
   ON consultation_requests
   FOR SELECT
   TO authenticated
@@ .. @@
 ALTER TABLE contact_messages ENABLE ROW LEVEL SECURITY;
 
-CREATE POLICY "Anyone can insert contact messages"
+CREATE POLICY "Allow anonymous users to insert contact messages"
   ON contact_messages
   FOR INSERT
-  TO authenticated
+  TO anon
   WITH CHECK (true);
 
-CREATE POLICY "Authenticated users can read contact messages"
+CREATE POLICY "Allow authenticated users to read contact messages"
   ON contact_messages
   FOR SELECT
   TO authenticated