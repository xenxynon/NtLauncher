.class public abstract Lcom/nothing/launcher/popup/l;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/popup/l$a;,
        Lcom/nothing/launcher/popup/l$e;,
        Lcom/nothing/launcher/popup/l$c;,
        Lcom/nothing/launcher/popup/l$b;,
        Lcom/nothing/launcher/popup/l$d;,
        Lcom/nothing/launcher/popup/l$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final i:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lq2/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lq2/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final n:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Lcom/nothing/launcher/popup/NTPopupContainer;

.field protected h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/nothing/launcher/popup/f;->g:Lcom/nothing/launcher/popup/f;

    sput-object v0, Lcom/nothing/launcher/popup/l;->i:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/nothing/launcher/popup/g;->g:Lcom/nothing/launcher/popup/g;

    sput-object v0, Lcom/nothing/launcher/popup/l;->j:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/nothing/launcher/popup/j;->g:Lcom/nothing/launcher/popup/j;

    sput-object v0, Lcom/nothing/launcher/popup/l;->k:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/nothing/launcher/popup/k;->g:Lcom/nothing/launcher/popup/k;

    sput-object v0, Lcom/nothing/launcher/popup/l;->l:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/nothing/launcher/popup/i;->g:Lcom/nothing/launcher/popup/i;

    sput-object v0, Lcom/nothing/launcher/popup/l;->m:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    sget-object v0, Lcom/nothing/launcher/popup/h;->g:Lcom/nothing/launcher/popup/h;

    sput-object v0, Lcom/nothing/launcher/popup/l;->n:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void
.end method

.method public constructor <init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic A(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    invoke-static {p1}, Lcom/nothing/launcher/popup/l;->t(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/nothing/launcher/popup/l$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/nothing/launcher/popup/l$b;-><init>(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method private static synthetic B(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    invoke-static {p1}, Lcom/nothing/launcher/popup/l;->v(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/nothing/launcher/popup/l$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/nothing/launcher/popup/l$c;-><init>(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method private static synthetic C(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/popup/l$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/nothing/launcher/popup/l$e;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic D(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/popup/l$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nothing/launcher/popup/l$a;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic k(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->A(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->y(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->z(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->D(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->C(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nothing/launcher/popup/l;->B(Lq2/m;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method private static r(Lcom/android/launcher3/Launcher;)Lcom/nothing/launcher/ossupport/core/NothingOSCore;
    .locals 0

    check-cast p0, Lq2/m;

    invoke-virtual {p0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    return-object p0
.end method

.method private static s(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, -0x68

    invoke-static {p1, v2}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, -0x66

    invoke-static {p1, v2}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {p1, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_1
    move-object v2, v1

    move-object v3, v2

    :goto_0
    if-eqz v2, :cond_5

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v4, Ly3/b;->a:Ly3/b;

    invoke-virtual {v4, v3}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    iput-boolean v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->isUninstallableSystemApp:Z

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Lcom/nothing/launcher/popup/l;->r(Lcom/android/launcher3/Launcher;)Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->isUninstallableSystemApp(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    return-object v1
.end method

.method private static t(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/nothing/launcher/popup/l;->u(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static u(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    const/16 v0, -0x64

    invoke-static {p0, v0}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lb3/m;->i(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static v(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 2

    invoke-static {p0}, Lcom/nothing/launcher/popup/l;->u(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static w(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v0, :cond_0

    const/16 v0, -0x68

    invoke-static {p0, v0}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x66

    invoke-static {p0, v0}, Lb3/m;->h(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static x(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v0, 0xc0

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    return v3

    :cond_1
    sget-object v0, Ly3/b;->a:Ly3/b;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-static {p0}, Lcom/nothing/launcher/popup/l;->r(Lcom/android/launcher3/Launcher;)Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->isUninstallableSystemApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v1

    :cond_4
    invoke-static {p0, p1}, Lcom/nothing/launcher/popup/l;->s(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method private static synthetic y(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 3

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/nothing/launcher/popup/l;->x(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/nothing/launcher/popup/l;->s(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/nothing/launcher/popup/l$f;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/nothing/launcher/popup/l$f;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static synthetic z(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .locals 1

    invoke-static {p1}, Lcom/nothing/launcher/popup/l;->w(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/nothing/launcher/popup/l$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/nothing/launcher/popup/l$d;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public E(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/popup/l;->h:Landroid/view/View;

    return-void
.end method

.method public F(Lcom/nothing/launcher/popup/NTPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/popup/l;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    return-void
.end method

.method protected q(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/popup/l;->g:Lcom/nothing/launcher/popup/NTPopupContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method
