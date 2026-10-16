import type { APIRoute } from 'astro';
import catalog from '../../../public/data/catalog.json';

// Minimal sidebar nav data (kind/version/slug only), served once and cached
// by the browser, instead of being inlined into every one of the ~6,600
// static schema pages. See the schemas/[...slug].astro and Layout.astro
// sidebar for why this exists: a full copy of the nav used to be rendered
// server-side on every page, which made `dist` grow with pages × resources.
const nav: Record<string, { kind: string; version: string; slug: string }[]> = {};
for (const [group, resources] of Object.entries(catalog.groups)) {
  nav[group] = resources.map((r) => ({ kind: r.kind, version: r.version, slug: r.slug }));
}

export const GET: APIRoute = () => {
  return new Response(JSON.stringify(nav), {
    headers: {
      'Content-Type': 'application/json',
      'Cache-Control': 'public, max-age=3600',
    },
  });
};
