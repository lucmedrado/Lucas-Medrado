CREATE TYPE "TaskCategory" AS ENUM ('STUDY', 'WORK', 'PERSONAL', 'OTHER');

ALTER TABLE "tasks" ADD COLUMN "category" "TaskCategory" NOT NULL DEFAULT 'OTHER';

CREATE INDEX "tasks_category_idx" ON "tasks"("category");
