.class public final synthetic Ln/d4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Ln/d4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ln/d4;

    invoke-direct {v0}, Ln/d4;-><init>()V

    sput-object v0, Ln/d4;->a:Ln/d4;

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

    check-cast p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsPredictionUpdateTask;->o(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object p0

    return-object p0
.end method
