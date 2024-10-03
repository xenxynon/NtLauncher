.class public final synthetic Lcom/android/quickstep/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/InputConsumer;


# static fields
.field public static final synthetic g:Lcom/android/quickstep/k2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/k2;

    invoke-direct {v0}, Lcom/android/quickstep/k2;-><init>()V

    sput-object v0, Lcom/android/quickstep/k2;->g:Lcom/android/quickstep/k2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 0

    invoke-static {}, Lcom/android/quickstep/InputConsumer;->b()I

    move-result p0

    return p0
.end method
