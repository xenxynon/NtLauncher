.class public final synthetic Lcom/android/launcher3/touch/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/r;

    invoke-direct {v0}, Lcom/android/launcher3/touch/r;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/r;->a:Lcom/android/launcher3/touch/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;II)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method
