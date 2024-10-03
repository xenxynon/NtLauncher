.class public final Lb3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb3/f;

    invoke-direct {v0}, Lb3/f;-><init>()V

    sput-object v0, Lb3/f;->a:Lb3/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lcom/nothing/launcher/NTLauncherApplication;->i:Lcom/nothing/launcher/NTLauncherApplication$a;

    invoke-virtual {p1}, Lcom/nothing/launcher/NTLauncherApplication$a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
