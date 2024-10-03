.class public final Lz3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz3/a;

    invoke-direct {v0}, Lz3/a;-><init>()V

    sput-object v0, Lz3/a;->a:Lz3/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Ls2/a;->obtainFor2x2Icon(Landroid/content/Context;)Ls2/a;

    move-result-object p0

    const-string p1, "{\n            NTLauncher\u2026x2Icon(context)\n        }"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p0

    const-string p1, "{\n            LauncherIc\u2026obtain(context)\n        }"

    :goto_0
    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
