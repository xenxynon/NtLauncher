.class public final synthetic Lcom/android/quickstep/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/l7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/l7;

    invoke-direct {v0}, Lcom/android/quickstep/l7;-><init>()V

    sput-object v0, Lcom/android/quickstep/l7;->a:Lcom/android/quickstep/l7;

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

    check-cast p1, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1, p2, p3}, Lcom/android/quickstep/util/TaskViewSimulator;->setTaskRectTranslation(II)V

    return-void
.end method
