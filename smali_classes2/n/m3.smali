.class public final synthetic Ln/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Ln/m3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/m3;

    invoke-direct {v0}, Ln/m3;-><init>()V

    sput-object v0, Ln/m3;->a:Ln/m3;

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

    invoke-static {p1}, Lcom/android/launcher3/model/WellbeingModel;->f(Landroid/content/Context;)Lcom/android/launcher3/model/WellbeingModel;

    move-result-object p0

    return-object p0
.end method
