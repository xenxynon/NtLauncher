.class public final Lcom/nothing/launcher/NTLauncherApplication;
.super Lv2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/NTLauncherApplication$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/nothing/launcher/NTLauncherApplication$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/NTLauncherApplication$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/NTLauncherApplication$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv2/a;-><init>()V

    return-void
.end method

.method public static final d(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {v0, p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->f(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-static {v0, p0}, Lcom/nothing/launcher/NTLauncherApplication$a;->e(Lcom/nothing/launcher/NTLauncherApplication$a;Landroid/app/Application;)V

    return-void
.end method
