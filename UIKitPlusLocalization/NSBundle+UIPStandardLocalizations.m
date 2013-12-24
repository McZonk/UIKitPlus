//
//  NSBundle+UIPStandardLocalizations.m
//  Plus
//
//  Created by Maximilian Christ on 6/5/12.
//  Copyright (c) 2012 mczonk.de. All rights reserved.
//

#import "NSBundle+UIPStandardLocalizations.h"

@implementation NSBundle (UIPStandardLocalizations)

- (NSString*)localizedAofB {
	// <key>%1$@ of %2$@</key>
	// <string>%1$@ von %2$@</string>
	
	NSString* string = @"%1$@ of %2$@";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>%@ Copies</key>
// <string>%@ Kopien</string>

// <key>%lu of %lu</key>
// <string>%lu von %lu</string>

// <key>1 Copy</key>
// <string>1 Kopie</string>

// <key>1x</key>
// <string>1x</string>

// <key>2x</key>
// <string>2x</string>

// <key>A conflict has been detected for this document.</key>
// <string>Bei diesem Dokument wurde ein Konflikt festgestellt.</string>

// <key>All Pages</key>
// <string>Alle Seiten</string>

// <key>American Express,AMEX</key>
// <string>American Express,AMEX</string>

// <key>AutoFill_IPAD</key>
// <string>Autom. ausfüllen</string>

// <key>AutoFill_IPHONE</key>
// <string>Autom. ausfüllen</string>

- (NSString*)localizedBack
{
	// <key>Back</key>
	// <string>Zurück</string>
	
	NSString *string = @"Back";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Bold</key>
// <string>Fett</string>

- (NSString*)localizedBookmarks
{
	// <key>Bookmarks</key>
	// <string>Lesezeichen</string>
	
	NSString *string = @"Bookmarks";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>CLEAR_UNDO_ACTION_NAME</key>
// <string>Löschen</string>

- (NSString*)localizedCancel
{
	// <key>Cancel</key>
	// <string>Abbrechen</string>
	
	NSString *string = @"Cancel";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Cancel Printing</key>
// <string>Drucken abbrechen</string>

// <key>Cancel java script dialog</key>
// <string>Abbrechen</string>

// <key>Cancelled</key>
// <string>Abgebrochen</string>

// <key>Cancelling page %@...</key>
// <string>Seite %@ abbrechen …</string>

// <key>Carte Blanche,CarteBlanche</key>
// <string>Carte Blanche,CarteBlanche</string>

- (NSString*)localizedClear
{
	// <key>Clear</key>
	// <string>Löschen</string>
	
	NSString *string = @"Clear";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Clear[Search]</key>
// <string>Löschen</string>

- (NSString*)localizedConfigure
{
	// <key>Configure</key>
	// <string>Konfigurieren</string>
	
	NSString *string = @"Configure";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Contacting Printer...</key>
// <string>Mit Drucker verbinden …</string>

- (NSString*)localizedContacts
{
	// <key>Contacts</key>
	// <string>Kontakte</string>
	
	NSString *string = @"Contacts";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Copy</key>
// <string>Kopieren</string>

// <key>Copy Link</key>
// <string>Kopieren</string>

// <key>Copy[Menu]</key>
// <string>Kopieren</string>

// <key>Cut</key>
// <string>Ausschneiden</string>

// <key>Define</key>
// <string>Nachschlagen</string>

- (NSString*)localizedDelete
{
	// <key>Delete</key>
	// <string>Löschen</string>
	
	NSString *string = @"Delete";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Delete[Menu]</key>
// <string>Löschen</string>

// <key>Dictation Soon Body</key>
// <string>Jeden Tag werden neue Benutzer für die Diktierfunktion hinzugefügt. Sie werden benachrichtigt, wenn sie für Sie verfügbar ist.</string>

// <key>Dictation Soon OK</key>
// <string>OK</string>

// <key>Dictation Soon Title</key>
// <string>Die Diktierfunktion ist bald für Sie verfügbar.</string>

// <key>Dictionary</key>
// <string>Wörterbuch</string>

// <key>Diners Club, Diner's Club, Diners Club International, Diner's Club International</key>
// <string>Diners Club, Diner's Club, Diners Club International, Diner's Club International</string>

// <key>Disable</key>
// <string>Deaktivieren</string>

// <key>Discover,Discover Card</key>
// <string>Discover,Discover Card</string>

// <key>Display on TV?</key>
// <string>Auf Fernseher anzeigen</string>

// <key>Do you want to revert the document "%@" to a previous state?</key>
// <string>Möchten Sie das Dokument „%@“ auf einen früheren Zustand zurücksetzen?</string>

// <key>Do you want to revert this document to a previous state?</key>
// <string>Möchten Sie dieses Dokument auf einen früheren Zustand zurücksetzen?</string>

// <key>Dock</key>
// <string>Andocken</string>

// <key>Dock and Merge</key>
// <string>Tastatur ins Dock</string>

- (NSString*)localizedDone
{
	// <key>Done</key>
	// <string>Fertig</string>
	
	NSString *string = @"Done";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Done-dictation</key>
// <string>Fertig</string>

// <key>Double-sided</key>
// <string>Doppelseitig</string>

- (NSString*)localizedDownloads
{
	// <key>Downloads</key>
	// <string>Downloads</string>
	
	NSString *string = @"Downloads";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedEdit
{
	// <key>Edit</key>
	// <string>Bearbeiten</string>
	
	NSString *string = @"Edit";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>EnRoute,En Route</key>
// <string>EnRoute,En Route</string>

- (NSString*)localizedFailed
{
	// <key>Failed</key>
	// <string>Fehlgeschlagen</string>
	
	NSString *string = @"Failed";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Failed to Contact Printer</key>
// <string>Drucker konnte nicht erreicht werden</string>

- (NSString*)localizedFavorites
{
	// <key>Favorites</key>
	// <string>Favoriten</string>
	
	NSString *string = @"Favorites";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Featured</key>
// <string>Highlights</string>

- (NSString*)localizedFinished
{
	// <key>Finished</key>
	// <string>Beendet</string>
	
	NSString *string = @"Finsihed";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedHistory
{
	// <key>History</key>
	// <string>Verlauf</string>
	
	NSString *string = @"History";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Hold</key>
// <string>Halten</string>

// <key>Ignore</key>
// <string>Ignorieren</string>

// <key>Intl info alert body</key>
// <string>Tippen Sie einmal auf die Globustaste, um zur letzten Tastatur zu wechseln. Tippen Sie weiter, um weitere aktivierte Tastaturen aufzurufen. Durch Tippen und Halten werden alle aktivierten Tastaturen angezeigt.</string>

// <key>Intl info alert title</key>
// <string>Alternative Tastaturen</string>

// <key>Italics</key>
// <string>Kursiv</string>

// <key>JCB (comma-separated list)</key>
// <string>JCB</string>

// <key>JavaScript Action Sheet Title</key>
// <string>JavaScript</string>

// <key>Last Opened Version</key>
// <string>Zuletzt geöffnete Version</string>

// <key>Last Saved Version</key>
// <string>Zuletzt gesicherte Version</string>

- (NSString*)localizedLoading
{
	// <key>Loading</key>
	// <string>Laden</string>
	
	NSString *string = @"Loading";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedLogin
{
	// <key>Login</key>
	// <string>Anmeldung</string>
	
	NSString *string = @"Login";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Looking for Printers...</key>
// <string>Nach Druckern suchen …</string>

// <key>Make Simplified</key>
// <string>Vereinfacht</string>

// <key>Make Traditional</key>
// <string>Traditionell</string>

// <key>MasterCard,Master Card</key>
// <string>MasterCard,Master Card</string>

- (NSString*)localizedMore
{
	// <key>More</key>
	// <string>Mehr</string>
	
	NSString *string = @"More";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Most Recent</key>
// <string>Neue Videos</string>

// <key>Most Viewed</key>
// <string>Topvideos</string>

// <key>Never for this Website</key>
// <string>Niemals für diese Website</string>

- (NSString*)localizedNext
{
	// <key>Next</key>
	// <string>Weiter</string>
	
	NSString *string = @"Next";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedNo
{
	// <key>No</key>
	// <string>Nein</string>
	
	NSString *string = @"No";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>No AirPrint Printers Found</key>
// <string>Keine AirPrint-Drucker gefunden</string>

// <key>No Documents Waiting</key>
// <string>Keine ausstehenden Dokumente</string>

// <key>No Options</key>
// <string>Keine Optionen</string>

// <key>No Replacements Found</key>
// <string>Kein Ersatz gefunden</string>

// <key>No Results</key>
// <string>Keine Treffer</string>

// <key>No definition found.</key>
// <string>Keine Definition gefunden.</string>

// <key>Not Charging</key>
// <string>Lädt nicht</string>

// <key>Not Now</key>
// <string>Später</string>

// <key>Nothing to Undo</key>
// <string>Nichts zu widerrufen</string>

- (NSString*)localizedOFF
{
	// <key>OFF</key>
	// <string>AUS</string>
	
	NSString *string = @"OFF";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedOK
{
	// <key>OK</key>
	// <string>OK</string>
	
	NSString *string = @"OK";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>OK java script dialog</key>
// <string>OK</string>

- (NSString*)localizedON
{
	// <key>ON</key>
	// <string>EIN</string>
	
	NSString *string = @"ON";
	return [self localizedStringForKey:string value:string table:nil];
}

- (NSString*)localizedOff
{
	// <key>Off</key>
	// <string>Aus</string>
	
	NSString *string = @"Off";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Older Version</key>
// <string>Ältere Version</string>

- (NSString*)localizedOn
{
	// <key>On</key>
	// <string>Ein</string>
	
	NSString *string = @"On";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Open In...</key>
// <string>Öffnen in …</string>


// <key>Open Link</key>
// <string>Öffnen</string>

// <key>Open in "%@"</key>
// <string>In „%@“ öffnen</string>

// <key>Page %@</key>
// <string>Seite %@</string>

// <key>Page Range</key>
// <string>Seitenbereich</string>

// <key>Pages %@-%@</key>
// <string>Seiten %@–%@</string>

// <key>Paper</key>
// <string>Papier</string>

- (NSString*)localizedPassword
{
	// <key>Password</key>
	// <string>Kennwort</string>
	
	NSString *string = @"Password";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Paste</key>
// <string>Einsetzen</string>

- (NSString*)localizedPause
{
	// <key>Pause</key>
	// <string>Pause</string>
	
	NSString *string = @"Pause";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Preparing page %@ of %@...</key>
// <string>Seite %@ von %@ vorbereiten …</string>

// <key>Preparing page %@...</key>
// <string>Seite %@ vorbereiten …</string>

// <key>Preparing...</key>
// <string>Vorbereiten …</string>

- (NSString*)localizedPrevious
{
	// <key>Previous</key>
	// <string>Zurück</string>
	
	NSString *string = @"Previous";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Print</key>
// <string>Drucken</string>

// <key>Print Order</key>
// <string>Reihenfolge</string>

// <key>Print Summary</key>
// <string>Druckinfos</string>

// <key>Print[Button]</key>
// <string>Drucken</string>

// <key>Printer</key>
// <string>Drucker</string>

// <key>Printer Available</key>
// <string>Drucker verfügbar</string>

// <key>Printer Options</key>
// <string>Druckeroptionen</string>

// <key>Printing %@ of %@...</key>
// <string>%@ von %@ drucken …</string>

// <key>Printing page %@...</key>
// <string>Seite %@ drucken …</string>

// <key>Printing to "%@"</key>
// <string>Drucken auf „%@“</string>

// <key>Quick Look</key>
// <string>Übersicht</string>

// <key>Range</key>
// <string>Bereich</string>

// <key>Recent changes will be saved in your version history.</key>
// <string>Letzte Änderungen werden in Ihrem Versionsverlauf gesichert.</string>

// <key>Recents</key>
// <string>Verlauf</string>

// <key>Recording</key>
// <string>Aufnahme</string>

// <key>Redo</key>
// <string>Wiederholen</string>

// <key>Replace...</key>
// <string>Vorschlag ...</string>

// <key>Resolve...</key>
// <string>Auflösen …</string>

- (NSString*)localizedResults
{
	// <key>Results</key>
	// <string>Ergebnisse</string>
	
	NSString *string = @"Results";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Revert</key>
// <string>Letzte Version</string>

// <key>Safari Forms AutoFill</key>
// <string>Automatisches Ausfüllen</string>

- (NSString*)localizedSave
{
	// <key>Save</key>
	// <string>Sichern</string>
	
	NSString *string = @"Save";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Save %d Images</key>
// <string>%d Bilder sichern</string>

// <key>Save Image</key>
// <string>Bild sichern</string>

- (NSString*)localizedSearch
{
	// <key>Search</key>
	// <string>Suchen</string>
	
	NSString *string = @"Search";
	return [self localizedStringForKey:string value:string table:nil];
}
// <key>Select</key>
// <string>Auswählen</string>

// <key>Select All</key>
// <string>Alles</string>

// <key>Select Printer</key>
// <string>Drucker auswählen</string>

// <key>Sending to Printer...</key>
// <string>An Drucker senden …</string>

// <key>Speak</key>
// <string>Sprechen</string>

// <key>Split</key>
// <string>Teilen</string>

- (NSString*)localizedStopped
{
	// <key>Stopped</key>
	// <string>Gestoppt</string>
	
	NSString *string = @"Stopped";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>The document "%@" could not be reverted. %@</key>
// <string>Das Dokument „%@“ konnte nicht zurückgesetzt werden. %@</string>

// <key>The document "%@" could not be saved. %@</key>
// <string>Das Dokument „%@“ konnte nicht gesichert werden. %@</string>

// <key>The document "%@" is password protected.</key>
// <string>Das Dokument „%@“ ist kennwortgeschützt.</string>

// <key>The document could not be opened with that password.</key>
// <string>Das Dokument konnte mit diesem Kennwort nicht geöffnet werden.</string>

// <key>The file "%@" has not been modified in a while.</key>
// <string>Die Datei „%@“ wurde seit Längerem nicht geändert.</string>

// <key>The file "%@" is locked.</key>
// <string>Die Datei „%@“ ist geschützt.</string>

// <key>The file has not been modified in a while.</key>
// <string>Die Datei wurde seit Längerem nicht geändert.</string>

// <key>The file is locked.</key>
// <string>Die Datei ist geschützt.</string>

// <key>This document is password protected.</key>
// <string>Dieses Dokument ist kennwortgeschützt.</string>

// <key>This password is different. Would you like to replace the saved password with this one?</key>
// <string>Das Kennwort stimmt nicht überein. Möchten Sie das gesicherte Kennwort durch dieses ersetzen?</string>

- (NSString*)localizedToday
{
	// <key>Today</key>
	// <string>Heute</string>
	
	NSString *string = @"Today";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Top Rated</key>
// <string>Bestwertung</string>

// <key>Type...</key>
// <string>Eingabe …</string>

// <key>Unable to open this document</key>
// <string>Das Dokument kann nicht geöffnet werden</string>

// <key>Underline</key>
// <string>Unterstrichen</string>

// <key>Undo</key>
// <string>Widerrufen</string>

// <key>Undock</key>
// <string>Abdocken</string>

// <key>Unknown</key>
// <string>Unbekannt</string>

// <key>Unlock</key>
// <string>Freigeben</string>

// <key>Used to decode the encrypted file that contains non-password data previously entered in web page forms.</key>
// <string>Zum Decodieren der verschlüsselten Datei, in der Daten (keine Kennwörter) von vorigen Webformularen gesichert wurden.</string>

// <key>Visa</key>
// <string>Visa</string>

- (NSString*)localizedWaiting
{
	// <key>Waiting</key>
	// <string>Warten</string>
	
	NSString *string = @"localizedWaiting";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>Wireless Printing</key>
// <string>Drahtloses Drucken</string>

// <key>Would you like to save this password?</key>
// <string>Möchten Sie dieses Kennwort sichern?</string>

- (NSString*)localizedYes
{
	// <key>Yes</key>
	// <string>Ja</string>
	
	NSString *string = @"Yes";
	return [self localizedStringForKey:string value:string table:nil];
}

// <key>You can resolve the conflict now, or ignore it. You can access ignored conflicts by browsing all versions.</key>
// <string>Sie können den Konflikt jetzt beheben oder ihn ignorieren. Im Versionsverlauf können Sie auf alle ignorierten Konflikte zugreifen.</string>

// <key>You can revert it to the state it was when you last opened it, or browse older versions. If you choose to revert it to a previous state, it will also be unlocked. Recent changes will be saved in your version history.</key>
// <string>Sie können es auf die zuletzt geöffnete Version zurücksetzen oder ältere Versionen durchsuchen. Wenn Sie das Dokument auf eine vorherige Version zurücksetzen, wird es auch freigegeben. Letzte Änderungen werden in Ihrem Versionsverlauf gesichert.</string>

// <key>You can revert it to the state it was when you last opened it, or browse older versions. Recent changes will be saved in your version history.</key>
// <string>Sie können es auf die zuletzt geöffnete Version zurücksetzen oder ältere Versionen durchsuchen. Letzte Änderungen werden in Ihrem Versionsverlauf gesichert.</string>

// <key>You can revert it to the state it was when you last saved it, or browse older versions. If you choose to revert it to a previous state, it will also be unlocked. Recent changes will be saved in your version history.</key>
// <string>Sie können es auf die zuletzt gesicherte Version zurücksetzen oder ältere Versionen durchsuchen. Wenn Sie das Dokument auf eine vorherige Version zurücksetzen, wird es auch freigegeben. Letzte Änderungen werden in Ihrem Versionsverlauf gesichert.</string>

// <key>You can revert it to the state it was when you last saved it, or browse older versions. Recent changes will be saved in your version history.</key>
// <string>Sie können es auf die zuletzt gesicherte Version zurücksetzen oder ältere Versionen durchsuchen. Letzte Änderungen werden in Ihrem Versionsverlauf gesichert.</string>

// <key>You must disable airplane mode to access data.</key>
// <string>Für den Datenzugriff müssen Sie den Flugmodus deaktivieren.</string>

// <key>Your changes will be automatically saved if you unlock.</key>
// <string>Wenn Sie den Schutz aufheben, werden Ihre Änderungen automatisch gesichert.</string>

// <key>Your document cannot be saved.</key>
// <string>Ihr Dokument kann nicht gesichert werden.</string>

// <key>card number,cardnumber,cardnum,ccnum,cc num,creditcardnumber,credit card number,newcreditcardnumber,new credit card number</key>
// <string>card number,cardnumber,cardnum,ccnum,cc num,creditcardnumber,credit card number,newcreditcardnumber,new credit card number,Kartennummer,Karten-Nummer,Keditkartennummer,Kreditkarten-Nummer,Nummer</string>

// <key>copies</key>
// <string>Kopien</string>

// <key>cvv,cvc,cvc2,cvv2,ccv2,cid,cvn,security code</key>
// <string>cvv,cvc,cvc2,cvv2,ccv2,cid,cvn,security code,prüfnummer,sicherheitscode,sicherheits-code</string>

// <key>document</key>
// <string>Dokument</string>

// <key>double-sided</key>
// <string>Doppelseitig</string>

// <key>emoji</key>
// <string>Emoji</string>

// <key>finished</key>
// <string>Beendet</string>

// <key>hour</key>
// <string>Stunde</string>

// <key>hours</key>
// <string>Stunden</string>

// <key>min</key>
// <string>Min</string>

// <key>mins</key>
// <string>Min</string>

// <key>printer</key>
// <string>Drucker</string>

// <key>sent</key>
// <string>Gesendet</string>

// <key>started</key>
// <string>Gestartet</string>

// <key>status</key>
// <string>Status</string>

// <key>to</key>
// <string>bis</string>

@end
