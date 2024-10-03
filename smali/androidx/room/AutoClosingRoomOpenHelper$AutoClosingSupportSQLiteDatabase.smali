.class final Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteDatabase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/AutoClosingRoomOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutoClosingSupportSQLiteDatabase"
.end annotation


# instance fields
.field private final mAutoCloser:Landroidx/room/AutoCloser;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/room/AutoCloser;)V
    .locals 0
    .param p1    # Landroidx/room/AutoCloser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$execSQL$8(Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ZLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setForeignKeyConstraintsEnabled$12(ZLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/Locale;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setLocale$10(Ljava/util/Locale;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$update$6(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$delete$5(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setPageSize$3(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$execSQL$7(Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$delete$5(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$execSQL$7(Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$execSQL$8(Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$insert$4(Ljava/lang/String;ILandroid/content/ContentValues;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->insert(Ljava/lang/String;ILandroid/content/ContentValues;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isWriteAheadLoggingEnabled$13(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$needUpgrade$9(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->needUpgrade(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$pokeOpen$0(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setForeignKeyConstraintsEnabled$12(ZLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setLocale$10(Ljava/util/Locale;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setMaxSqlCacheSize$11(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaxSqlCacheSize(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setMaximumSize$2(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setMaximumSize(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setPageSize$3(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setPageSize(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$setVersion$1(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setVersion(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$update$6(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroidx/sqlite/db/SupportSQLiteDatabase;->update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setMaximumSize$2(JLandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$needUpgrade$9(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/lang/String;ILandroid/content/ContentValues;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$insert$4(Ljava/lang/String;ILandroid/content/ContentValues;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$isWriteAheadLoggingEnabled$13(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setMaxSqlCacheSize$11(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$pokeOpen$0(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->lambda$setVersion$1(ILandroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw v0
.end method

.method public beginTransactionNonExclusive()V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw v0
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->closeDatabaseIfOpen()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1

    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-direct {v0, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement;-><init>(Ljava/lang/String;Landroidx/room/AutoCloser;)V

    return-object v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/x;

    invoke-direct {v0, p1, p2, p3}, Landroidx/room/x;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public disableWriteAheadLogging()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Enable/disable write ahead logging on the OpenHelper instead of on the database directly."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableWriteAheadLogging()Z
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Enable/disable write ahead logging on the OpenHelper instead of on the database directly."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endTransaction()V
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "End transaction called but delegateDb is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/u;

    invoke-direct {v0, p1}, Landroidx/room/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/y;

    invoke-direct {v0, p1, p2}, Landroidx/room/y;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/f;->a:Landroidx/room/f;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getMaximumSize()J
    .locals 2

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/o;->a:Landroidx/room/o;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPageSize()J
    .locals 2

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/p;->a:Landroidx/room/p;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/g;->a:Landroidx/room/g;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/h;->a:Landroidx/room/h;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public inTransaction()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/i;->a:Landroidx/room/i;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public insert(Ljava/lang/String;ILandroid/content/ContentValues;)J
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/v;

    invoke-direct {v0, p1, p2, p3}, Landroidx/room/v;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/j;->a:Landroidx/room/j;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/k;->a:Landroidx/room/k;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/m;->a:Landroidx/room/m;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/d;->a:Landroidx/room/d;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public needUpgrade(I)Z
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/a;

    invoke-direct {v0, p1}, Landroidx/room/a;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method pokeOpen()V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/e;->a:Landroidx/room/e;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-direct {v0, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-direct {p2, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public query(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-direct {v0, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {v0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p2, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-direct {p2, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper$KeepAliveCursor;-><init>(Landroid/database/Cursor;Landroidx/room/AutoCloser;)V

    return-object p2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/c;

    invoke-direct {v0, p1}, Landroidx/room/c;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/b;

    invoke-direct {v0, p1}, Landroidx/room/b;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/l;

    invoke-direct {v0, p1}, Landroidx/room/l;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/t;

    invoke-direct {v0, p1, p2}, Landroidx/room/t;-><init>(J)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public setPageSize(J)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/s;

    invoke-direct {v0, p1, p2}, Landroidx/room/s;-><init>(J)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->getDelegateDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setTransactionSuccessful called but delegateDb is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVersion(I)V
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v0, Landroidx/room/q;

    invoke-direct {v0, p1}, Landroidx/room/q;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    return-void
.end method

.method public update(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 7

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    new-instance v6, Landroidx/room/w;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/room/w;-><init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely()Z
    .locals 1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object v0, Landroidx/room/n;->a:Landroidx/room/n;

    invoke-virtual {p0, v0}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->mAutoCloser:Landroidx/room/AutoCloser;

    sget-object p1, Landroidx/room/n;->a:Landroidx/room/n;

    invoke-virtual {p0, p1}, Landroidx/room/AutoCloser;->executeRefCountingFunction(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
