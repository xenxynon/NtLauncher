.class public final synthetic Ld0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# static fields
.field public static final synthetic a:Ld0/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ld0/a;

    invoke-direct {v0}, Ld0/a;-><init>()V

    sput-object v0, Ld0/a;->a:Ld0/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-static {p1, p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->a(Landroid/content/Context;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
