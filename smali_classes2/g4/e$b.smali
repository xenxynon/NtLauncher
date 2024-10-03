.class Lg4/e$b;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg4/e;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lg4/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg4/e;


# direct methods
.method constructor <init>(Lg4/e;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lg4/e$b;->a:Lg4/e;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/sqlite/db/SupportSQLiteStatement;Lg4/c;)V
    .locals 2

    invoke-virtual {p2}, Lg4/c;->b()J

    move-result-wide v0

    const/4 p0, 0x1

    invoke-interface {p1, p0, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lg4/c;

    invoke-virtual {p0, p1, p2}, Lg4/e$b;->a(Landroidx/sqlite/db/SupportSQLiteStatement;Lg4/c;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM `HiddenApp` WHERE `id` = ?"

    return-object p0
.end method
