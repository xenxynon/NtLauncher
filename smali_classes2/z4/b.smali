.class public final Lz4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz4/b;

.field private static final b:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/b;

    invoke-direct {v0}, Lz4/b;-><init>()V

    sput-object v0, Lz4/b;->a:Lz4/b;

    sget-object v0, Lz4/b$a;->g:Lz4/b$a;

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    sput-object v0, Lz4/b;->b:Ln5/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lz4/b;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lz4/b;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final b()Z
    .locals 0

    sget-object p0, Lz4/b;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final c(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.nothing.settings.apps.uninstall.AppUninstallerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "com.nothing.settings.uninstall.enabled"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p1, "AppUninstallUtil"

    const-string v0, "Setting apk has no metadata: com.nothing.settings.uninstall.enabled"

    invoke-static {p1, v0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public final d(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Landroid/view/View;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/content/ComponentName;",
            "Landroid/view/View;",
            ")",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p1, Lq2/m;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lq2/m;

    invoke-virtual {v0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->isUninstallableSystemApp:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lz4/b;->b()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_0
    move-object p0, p1

    check-cast p0, Lq2/m;

    invoke-virtual {p0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, ""

    :cond_2
    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->startUninstallApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const p0, 0x7f1200c4

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_5

    :cond_4
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    :cond_5
    const/4 p0, 0x0

    invoke-static {p4, p0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "package"

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "android.intent.extra.USER"

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p4, "parseUri(uri, 0)\n       \u2026XTRA_USER, itemInfo.user)"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "start uninstall activity "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly2/e;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to parse intent to start uninstall activity for item="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly2/e;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
