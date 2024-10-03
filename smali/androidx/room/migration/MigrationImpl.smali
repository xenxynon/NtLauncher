.class final Landroidx/room/migration/MigrationImpl;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# instance fields
.field private final migrateCallback:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILy5/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ly5/l<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "migrateCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/room/migration/Migration;-><init>(II)V

    iput-object p3, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Ly5/l;

    return-void
.end method


# virtual methods
.method public final getMigrateCallback()Ly5/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/l<",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Ly5/l;

    return-object p0
.end method

.method public migrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/migration/MigrationImpl;->migrateCallback:Ly5/l;

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
