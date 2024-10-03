.class public final synthetic Ln/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/n;

    invoke-direct {v0}, Ln/n;-><init>()V

    sput-object v0, Ln/n;->a:Ln/n;

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

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->k(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
