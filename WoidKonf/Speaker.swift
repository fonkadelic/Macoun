//
//  Speaker.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import Foundation

public struct Speaker {
    let id: Int
    let name: String
    let shortBio: String
    let longBio: String
    let image: UIImage
}

extension Speaker {
    
    static let allSpeakers = [
        Speaker(
            id: 1,
            name: "Arron Ward",
            shortBio: "Ita credo. Ille incendat Easdemne res. Quis Aristidem non mortuum diligit.",
            longBio: "Quamquam in hac divisione rem ipsam prorsus probo, elegantiam desidero. Hoc Hieronymus summum bonum esse dixit. Gloriosa ostentatio in constituendo summo bono. De hominibus dici non necesse est. Nemo nostrum istius generis asotos iucunde putat vivere. At miser, si in flagitiosa et vitiosa vita afflueret voluptatibus. Qua igitur re ab deo vincitur, si aeternitate non vincitur.",
            image: #imageLiteral(resourceName: "speaker1")
        ),
        Speaker(
            id: 2,
            name: "Bessie Weaver",
            shortBio: "Eaedem res maneant alio modo. Iam in altera philosophiae parte. Erat enim res aperta.",
            longBio: "Nonne igitur tibi videntur, inquit, mala? Philosophi autem in suis lectulis plerumque moriuntur. An vero, inquit, quisquam potest probare, quod perceptfum, quod. Quis est enim, in quo sit cupiditas, quin recte cupidus dici possit? Que Manilium, ab iisque M. Gerendus est mos, modo recte sentiat. Si autem id non concedatur, non continuo vita beata tollitur. Tu autem, si tibi illa probabantur, cur non propriis verbis ea tenebas? Serpere anguiculos, nare anaticulas, evolare merulas, cornibus uti videmus boves, nepas aculeis.",
            image: #imageLiteral(resourceName: "speaker2")
        ),
        Speaker(
            id: 3,
            name: "Pamela Scott",
            shortBio: "Id enim natura desiderat. Et ille ridens: Video, inquit, quid agas; Sed quae tandem ista.",
            longBio: "Ab hoc autem quaedam non melius quam veteres, quaedam omnino relicta. Atque haec ita iustitiae propria sunt, ut sint virtutum reliquarum communia. Sed ego in hoc resisto; At ille non pertimuit saneque fidenter: Istis quidem ipsis verbis, inquit; Iam id ipsum absurdum, maximum malum neglegi. Ita graviter et severe voluptatem secrevit a bono. Non dolere, inquam, istud quam vim habeat postea videro.",
            image: #imageLiteral(resourceName: "speaker3")
        ),
        Speaker(
            id: 4,
            name: "Jordan Mckinney",
            shortBio: "Itaque fecimus. Sit enim idem caecus, debilis. Velut ego nunc moveor.",
            longBio: "Et quidem Arcesilas tuus, etsi fuit in disserendo pertinacior, tamen noster fuit; Sed quid attinet de rebus tam apertis plura requirere? Maximas vero virtutes iacere omnis necesse est voluptate dominante. Verum hoc idem saepe faciamus. Equidem etiam Epicurum, in physicis quidem, Democriteum puto. Itaque primos congressus copulationesque et consuetudinum instituendarum voluntates fieri propter voluptatem; Facillimum id quidem est, inquam. Apud imperitos tum illa dicta sunt, aliquid etiam coronae datum.",
            image: #imageLiteral(resourceName: "speaker4")
        ),
        Speaker(
            id: 5,
            name: "Ian Horton",
            shortBio: "Respondeat totidem verbis. Quibus ego vehementer assentior. Iam in altera philosophiae parte.",
            longBio: "Maximus dolor, inquit, brevis est. Quae cum dixisset paulumque institisset, Quid est? Sed nimis multa. An me, inquam, nisi te audire vellem, censes haec dicturum fuisse? Illa argumenta propria videamus, cur omnia sint paria peccata. Si mala non sunt, iacet omnis ratio Peripateticorum. Hanc ergo intuens debet institutum illud quasi signum absolvere. Sed haec quidem liberius ab eo dicuntur et saepius.",
            image: #imageLiteral(resourceName: "speaker5")
        ),
        Speaker(
            id: 6,
            name: "Nina Chambers",
            shortBio: "Prodest, inquit, mihi eo esse animo. Istic sum, inquit. Ita credo.",
            longBio: "An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Innumerabilia dici possunt in hanc sententiam, sed non necesse est. Non est ista, inquam, Piso, magna dissensio. Videamus animi partes, quarum est conspectus illustrior; Respondeat totidem verbis. Nondum autem explanatum satis, erat, quid maxime natura vellet. Et quod est munus, quod opus sapientiae? Quod non faceret, si in voluptate summum bonum poneret. Illa argumenta propria videamus, cur omnia sint paria peccata. Itaque eos id agere, ut a se dolores, morbos, debilitates repellant.",
            image: #imageLiteral(resourceName: "speaker6")
        ),
        Speaker(
            id: 7,
            name: "Walter Carroll",
            shortBio: "Sed residamus, inquit, si placet. Nulla erit controversia. Equidem e Cn.",
            longBio: "Hoc enim identidem dicitis, non intellegere nos quam dicatis voluptatem. Quae qui non vident, nihil umquam magnum ac cognitione dignum amaverunt. Videamus animi partes, quarum est conspectus illustrior; Ut in geometria, prima si dederis, danda sunt omnia. Nobis aliter videtur, recte secusne, postea; Qui ita affectus, beatum esse numquam probabis.",
            image: #imageLiteral(resourceName: "speaker7")
        ),
        Speaker(
            id: 8,
            name: "Henry Washington",
            shortBio: "Dici enim nihil potest verius. Eaedem res maneant alio modo. Urgent tamen et nihil remittunt.",
            longBio: "Diodorus, eius auditor, adiungit ad honestatem vacuitatem doloris. Vide, quantum, inquam, fallare, Torquate. Quis enim redargueret? Videamus igitur sententias eorum, tum ad verba redeamus. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Nos paucis ad haec additis finem faciamus aliquando; Atque haec coniunctio confusioque virtutum tamen a philosophis ratione quadam distinguitur. Portenta haec esse dicit, neque ea ratione ullo modo posse vivi; Duo Reges: constructio interrete.",
            image: #imageLiteral(resourceName: "speaker8")
        )
    ]
}
