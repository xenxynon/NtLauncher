.class public final synthetic Lcom/android/launcher3/touch/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/s;

    invoke-direct {v0}, Lcom/android/launcher3/touch/s;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/s;->a:Lcom/android/launcher3/touch/s;

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

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method
