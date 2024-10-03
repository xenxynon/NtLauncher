.class public final synthetic Ln/p2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln/p2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/p2;

    invoke-direct {v0}, Ln/p2;-><init>()V

    sput-object v0, Ln/p2;->a:Ln/p2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->r(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
