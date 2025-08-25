# Domivas - Dental Website Design & Development

A professional website for Domivas, specializing in dental clinic website design and development.

## Features

- 🎨 Modern, responsive design
- 📱 Mobile-first approach
- 🚀 Fast loading with Vite
- 🔒 Security headers and best practices
- 📊 Supabase integration for form submissions
- 🍪 GDPR-compliant cookie consent
- 📧 Contact forms and consultation booking

## Tech Stack

- **Frontend**: React 18 + TypeScript
- **Styling**: Tailwind CSS
- **Build Tool**: Vite
- **Database**: Supabase
- **Icons**: Lucide React
- **Deployment**: Netlify

## Getting Started

### Prerequisites

- Node.js 18 or higher
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone <your-repo-url>
cd domivas-website
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env
```

Add your Supabase credentials to `.env`:
```
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
```

4. Start the development server:
```bash
npm run dev
```

## Deployment

### Netlify

1. Connect your GitHub repository to Netlify
2. Set build command: `npm run build`
3. Set publish directory: `dist`
4. Add environment variables in Netlify dashboard

### Manual Deployment

```bash
npm run build
```

Upload the `dist` folder to your hosting provider.

## Database Setup

The project uses Supabase for data storage. Run the migrations in the `supabase/migrations` folder to set up the required tables:

- `consultation_requests` - For booking form submissions
- `contact_messages` - For contact form submissions

## Security Features

- Content Security Policy headers
- XSS protection
- CSRF protection
- Input validation and sanitization
- Rate limiting on form submissions
- Row Level Security (RLS) on database tables

## License

© 2025 Domivas. All rights reserved.