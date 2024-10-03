.class public final synthetic Ln/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/j;

    invoke-direct {v0}, Ln/j;-><init>()V

    sput-object v0, Ln/j;->a:Ln/j;

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

    invoke-static {p1}, Lcom/android/launcher3/model/BaseLauncherBinder;->a(Lcom/android/launcher3/model/data/AppInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
