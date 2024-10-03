.class public final synthetic Lcom/android/launcher3/touch/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/touch/q;

    invoke-direct {v0}, Lcom/android/launcher3/touch/q;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/q;->a:Lcom/android/launcher3/touch/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;FF)V
    .locals 0

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method
