import { test } from './baseFixtures.js';
import { doQuickLogin } from './login.js';

test('Spotlight - Action', async ({ page }) => {
  await doQuickLogin(page, 'admin', 'inventree');

  // Go to Dashboard
  await page.getByLabel('open-spotlight').click();
  await page
    .getByRole('button', { name: 'Dashboard Go to the App dashboard' })
    .click();
  await page.waitForURL('**/platform/home');

  // Go to the Admin Center
  await page.getByLabel('open-spotlight').click();
  await page
    .getByRole('button', { name: 'Admin Center Go to the Admin Center' })
    .click();
  await page.waitForURL('**/settings/admin/**');
});
