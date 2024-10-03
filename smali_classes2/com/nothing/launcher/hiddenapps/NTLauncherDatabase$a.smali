.class public final Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->c()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    const-class v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    const-string v1, "nt_launcher.db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "databaseBuilder(\n       \u2026                 .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    sget-object p1, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->a:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;

    invoke-static {v0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->d(Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method
