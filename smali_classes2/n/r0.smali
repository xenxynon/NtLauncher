.class public final synthetic Ln/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Ln/r0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/r0;

    invoke-direct {v0}, Ln/r0;-><init>()V

    sput-object v0, Ln/r0;->a:Ln/r0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/model/ItemInstallQueue;->g(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;

    move-result-object p0

    return-object p0
.end method
