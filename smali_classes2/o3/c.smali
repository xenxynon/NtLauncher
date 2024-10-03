.class public final Lo3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo3/c;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/c;

    invoke-direct {v0}, Lo3/c;-><init>()V

    sput-object v0, Lo3/c;->a:Lo3/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    sget-object p0, Lo3/c;->b:Landroid/app/Application;

    if-nez p0, :cond_0

    const-string p0, "application"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "application.applicationContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Landroid/app/Application;)V
    .locals 0

    const-string p0, "app"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lo3/c;->b:Landroid/app/Application;

    return-void
.end method
