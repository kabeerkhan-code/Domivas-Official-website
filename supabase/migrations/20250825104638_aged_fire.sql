/*
  # Fix RLS policies for anonymous users

  1. Security Updates
    - Update consultation_requests table policies to allow anonymous inserts
    - Update contact_messages table policies to allow anonymous inserts
    - Maintain read restrictions for authenticated users only

  2. Changes Made
    - Drop existing restrictive policies
    - Create new policies allowing anon users to insert data
    - Keep select policies restricted to authenticated users
*/

-- Drop existing policies that are too restrictive
DROP POLICY IF EXISTS "Anyone can insert consultation requests" ON consultation_requests;
DROP POLICY IF EXISTS "Authenticated users can read consultation requests" ON consultation_requests;
DROP POLICY IF EXISTS "Anyone can insert contact messages" ON contact_messages;
DROP POLICY IF EXISTS "Authenticated users can read contact messages" ON contact_messages;

-- Create new policies for consultation_requests
CREATE POLICY "Allow anonymous users to insert consultation requests"
  ON consultation_requests
  FOR INSERT
  TO anon
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to read consultation requests"
  ON consultation_requests
  FOR SELECT
  TO authenticated
  USING (true);

-- Create new policies for contact_messages
CREATE POLICY "Allow anonymous users to insert contact messages"
  ON contact_messages
  FOR INSERT
  TO anon
  WITH CHECK (true);

CREATE POLICY "Allow authenticated users to read contact messages"
  ON contact_messages
  FOR SELECT
  TO authenticated
  USING (true);