.class public final synthetic Li/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final synthetic g:Li/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/o;

    invoke-direct {v0}, Li/o;-><init>()V

    sput-object v0, Li/o;->g:Li/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/dragndrop/DraggableView;->c()V

    return-void
.end method
