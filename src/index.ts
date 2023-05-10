import { registerPlugin } from '@capacitor/core';
import { MapboxCapacitorPluginPlugin } from './definitions';

export * from './definitions';

export const MapboxCapacitorPlugin = registerPlugin<MapboxCapacitorPluginPlugin>('MapboxCapacitorPlugin', {
  web: () => import('./web').then(m => new m.MapboxCapacitorPluginWeb()),
});
