export interface Database {
  public: {
    Tables: {
      consultation_requests: {
        Row: {
          id: string
          created_at: string
          name: string
          email: string
          phone: string
          business_name: string
          preferred_date: string
          preferred_time: string
          status: 'pending' | 'contacted' | 'completed' | 'cancelled'
        }
        Insert: {
          id?: string
          created_at?: string
          name: string
          email: string
          phone: string
          business_name: string
          preferred_date: string
          preferred_time: string
          status?: 'pending' | 'contacted' | 'completed' | 'cancelled'
        }
        Update: {
          id?: string
          created_at?: string
          name?: string
          email?: string
          phone?: string
          business_name?: string
          preferred_date?: string
          preferred_time?: string
          status?: 'pending' | 'contacted' | 'completed' | 'cancelled'
        }
      }
      contact_messages: {
        Row: {
          id: string
          created_at: string
          name: string
          email: string
          message: string
          status: 'unread' | 'read' | 'replied'
        }
        Insert: {
          id?: string
          created_at?: string
          name: string
          email: string
          message: string
          status?: 'unread' | 'read' | 'replied'
        }
        Update: {
          id?: string
          created_at?: string
          name?: string
          email?: string
          message?: string
          status?: 'unread' | 'read' | 'replied'
        }
      }
    }
  }
}