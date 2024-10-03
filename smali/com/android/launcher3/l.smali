.class public final synthetic Lcom/android/launcher3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final synthetic g:Lcom/android/launcher3/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/l;

    invoke-direct {v0}, Lcom/android/launcher3/l;-><init>()V

    sput-object v0, Lcom/android/launcher3/l;->g:Lcom/android/launcher3/l;

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

    invoke-static {}, Lcom/android/launcher3/BubbleTextView;->d()V

    return-void
.end method
