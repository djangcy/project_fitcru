/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from "firebase-functions/v2/https";
 * import {onDocumentWritten} from "firebase-functions/v2/firestore";
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import {onRequest} from "firebase-functions/v2/https";
import * as logger from "firebase-functions/logger";

/**
 * Fetches quotes from 'https://zenquotes.io/api/quotes'.
 *
 * @return {Promise<any>} A Promise
 *  that resolves with the fetched quotes as JSON.
 * @throws {Error} If the request fails or the response status is not OK.
 */
async function fetchQuotes(): Promise<Record<string, object>> {
  const url = "https://zenquotes.io/api/quotes";

  try {
    const response = await fetch(url);

    if (!response.ok) {
      throw new Error(`Request failed with status: ${response.status}`);
    }

    const data = await response.json();
    return data;
  } catch (error) {
    logger.warn("Error fetching quotes: ", error);
    throw error;
  }
}

// Start writing functions
// https://firebase.google.com/docs/functions/typescript

/**
 * Endpoint to get quotes. Responds with the fetched quotes as JSON.
 *
 * @param {Request} request
 * @param {Response} response
 */
export const getQuotes = onRequest(
  {cors: true},
  async (request, response) => {
    try {
      const quotes = await fetchQuotes();
      response.status(200).json(quotes);
    } catch (error) {
      logger.warn("Could not fetch quotes: ", error);
      response.status(500).json({error: "Internal Server Error"});
    }
  }
);
