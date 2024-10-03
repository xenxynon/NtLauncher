.class public final synthetic Lcom/android/launcher3/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/c3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/c3;

    invoke-direct {v0}, Lcom/android/launcher3/c3;-><init>()V

    sput-object v0, Lcom/android/launcher3/c3;->a:Lcom/android/launcher3/c3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldIncludeView(Landroid/view/View;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/PagedView;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
