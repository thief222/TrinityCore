/*
 * Copyright (C) 2008-2017 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ScriptedCreature.h"
#include "ScriptMgr.h"
#include "wailing_caverns.h"

enum Spells
{
    SPELL_CRUSHING_BITE = 80362
};

enum Events
{
    EVENT_CRUSHING_BITE = 1
};

class boss_kresh : public CreatureScript
{
public:
    boss_kresh() : CreatureScript("boss_kresh") { }

    struct boss_kreshAI : public BossAI
    {
        boss_kreshAI(Creature* creature) : BossAI(creature, DATA_KRESH) { }

        void EnterCombat(Unit* /*who*/) override
        {
            _EnterCombat();

            events.ScheduleEvent(EVENT_CRUSHING_BITE, Seconds(6));
        }

        void UpdateAI(uint32 diff) override
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STATE_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_CRUSHING_BITE:
                        DoCastVictim(SPELL_CRUSHING_BITE);
                        events.Repeat(Seconds(16));
                        break;
                    default:
                        break;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const override
    {
        return GetWailingCavernsAI<boss_kreshAI>(creature);
    }
};


void AddSC_boss_kresh()
{
    new boss_kresh();
}