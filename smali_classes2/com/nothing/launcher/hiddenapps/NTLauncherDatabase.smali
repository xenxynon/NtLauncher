.class public abstract Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
.super Landroidx/room/RoomDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lg4/c;
    }
    exportSchema = false
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;

.field private static volatile b:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->a:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic c()Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->b:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    return-object v0
.end method

.method public static final synthetic d(Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;)V
    .locals 0

    sput-object p0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->b:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    return-void
.end method

.method public static final e(Landroid/content/Context;)Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;
    .locals 1

    sget-object v0, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;->a:Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase$a;->a(Landroid/content/Context;)Lcom/nothing/launcher/hiddenapps/NTLauncherDatabase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract f()Lg4/d;
.end method
