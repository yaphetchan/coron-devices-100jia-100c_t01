.class public Lcom/baidu/internal/keyguard/slide/TargetView;
.super Landroid/widget/RelativeLayout;
.source "TargetView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;,
        Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;,
        Lcom/baidu/internal/keyguard/slide/TargetView$State;,
        Lcom/baidu/internal/keyguard/slide/TargetView$ViewState;,
        Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;
    }
.end annotation


# static fields
.field private static final MSG_ARROW_UPDATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"


# instance fields
.field private mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAxisBottom:Landroid/widget/ImageView;

.field private mAxisLeft:Landroid/widget/ImageView;

.field private mAxisRight:Landroid/widget/ImageView;

.field private mAxisTop:Landroid/widget/ImageView;

.field private mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

.field private mBgCicle:Landroid/view/View;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

.field private mGuideArrow:Landroid/view/ViewGroup;

.field private mHandleLastX:I

.field private mHandleLastY:I

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mIsChargging:Z

.field private mIsGuideArrowShow:Z

.field private mIsMusicPlaying:Z

.field private mLocationOnScreenX:I

.field private mLocationOnScreenY:I

.field private mMissCallCount:I

.field private mMissCallCountView:Landroid/widget/TextView;

.field private mMissMsgCount:I

.field private mMissMsgCountView:Landroid/widget/TextView;

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPlugged:I

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private final mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

.field private mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

.field private mTargetCamera:Landroid/view/View;

.field private mTargetHandle:Landroid/view/View;

.field private mTargetMessage:Landroid/view/View;

.field private mTargetPhone:Landroid/view/View;

.field private mTargetRing:Landroid/view/View;

.field private mTargetUnlock:Landroid/view/View;

.field private mTargetView:Landroid/view/ViewGroup;

.field private mTargets:Landroid/view/ViewGroup;

.field private mVibrator:Landroid/os/Vibrator;

.field private mZoomInAnimation:Landroid/view/animation/AnimationSet;

.field private mZoomOutAnimation:Landroid/view/animation/AnimationSet;

.field private t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 52
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 53
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 54
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 55
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 56
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 57
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 58
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsGuideArrowShow:Z

    .line 68
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsMusicPlaying:Z

    .line 69
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    .line 72
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 52
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 53
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 54
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 55
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 56
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 57
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 58
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsGuideArrowShow:Z

    .line 68
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsMusicPlaying:Z

    .line 69
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    .line 72
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandler:Landroid/os/Handler;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 52
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 53
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 54
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 55
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 56
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 57
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 58
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$StateChargging;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsGuideArrowShow:Z

    .line 68
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsMusicPlaying:Z

    .line 69
    iput-boolean v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    .line 72
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomInAnimation:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargets:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBgCicle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/slide/TargetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/CharggingView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/internal/keyguard/slide/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->vibrate()V

    return-void
.end method

.method static synthetic access$2200(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/AnimationSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomOutAnimation:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/baidu/internal/keyguard/slide/TargetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/baidu/internal/keyguard/slide/TargetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/TargetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastX:I

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/TargetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastY:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/slide/TargetView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/TargetView;)Lcom/baidu/internal/keyguard/slide/TargetCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    return-object v0
.end method

.method private ringIntersectProcess()V
    .locals 17

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v9, v12, 0x3

    .line 325
    .local v9, r:I
    const/4 v12, 0x2

    new-array v4, v12, [I

    .line 326
    .local v4, handleXY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 328
    .local v6, messageXY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 329
    const/4 v12, 0x2

    new-array v2, v12, [I

    .line 330
    .local v2, cameraXY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;

    invoke-virtual {v12, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 331
    const/4 v12, 0x2

    new-array v11, v12, [I

    .line 332
    .local v11, unlockXY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;

    invoke-virtual {v12, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 333
    const/4 v12, 0x2

    new-array v8, v12, [I

    .line 334
    .local v8, phoneXY:[I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;

    invoke-virtual {v12, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 335
    new-instance v3, Landroid/graphics/Point;

    const/4 v12, 0x0

    aget v12, v4, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    const/4 v13, 0x1

    aget v13, v4, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-direct {v3, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 336
    .local v3, handlePoint:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v6, v12

    sub-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v6, v13

    sub-int/2addr v13, v9

    const/4 v14, 0x0

    aget v14, v6, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    const/4 v15, 0x1

    aget v15, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v15, v9

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    .local v5, messageRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v2, v12

    sub-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v2, v13

    sub-int/2addr v13, v9

    const/4 v14, 0x0

    aget v14, v2, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    const/4 v15, 0x1

    aget v15, v2, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v15, v9

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 340
    .local v1, cameraRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v11, v12

    sub-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v11, v13

    sub-int/2addr v13, v9

    const/4 v14, 0x0

    aget v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    const/4 v15, 0x1

    aget v15, v11, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v15, v9

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 342
    .local v10, unlockRect:Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    aget v12, v8, v12

    sub-int/2addr v12, v9

    const/4 v13, 0x1

    aget v13, v8, v13

    sub-int/2addr v13, v9

    const/4 v14, 0x0

    aget v14, v8, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    const/4 v15, 0x1

    aget v15, v8, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v15, v9

    invoke-direct {v7, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 343
    .local v7, phoneRect:Landroid/graphics/Rect;
    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 354
    :goto_0
    return-void

    .line 345
    :cond_0
    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_0

    .line 347
    :cond_1
    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_0

    .line 349
    :cond_2
    iget v12, v3, Landroid/graphics/Point;->x:I

    iget v13, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_0

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 612
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 615
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 11

    .prologue
    .line 176
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 177
    const v2, 0x102029d

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetView:Landroid/view/ViewGroup;

    .line 178
    const v2, 0x102029e

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    .line 179
    const v2, 0x10202a7

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetMessage:Landroid/view/View;

    .line 180
    const v2, 0x10202a3

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCamera:Landroid/view/View;

    .line 181
    const v2, 0x10202a4

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetPhone:Landroid/view/View;

    .line 182
    const v2, 0x10202a6

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetUnlock:Landroid/view/View;

    .line 183
    const v2, 0x10202a9

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetRing:Landroid/view/View;

    .line 184
    const v2, 0x10202a1

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBgCicle:Landroid/view/View;

    .line 185
    const v2, 0x102029f

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mGuideArrow:Landroid/view/ViewGroup;

    .line 186
    const v2, 0x10202aa

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/CharggingView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    .line 187
    const v2, 0x10202a0

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargets:Landroid/view/ViewGroup;

    .line 194
    const v2, 0x10202ac

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    .line 195
    const v2, 0x10202a8

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;

    .line 196
    const v2, 0x10202a5

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;

    .line 197
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 198
    .local v10, shortAnimTime:I
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    .line 199
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v10

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 200
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 201
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    int-to-long v3, v10

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 202
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, 0x43b4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 203
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f80

    const v3, 0x3dcccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 204
    .local v0, scaleOut:Landroid/view/animation/ScaleAnimation;
    int-to-long v2, v10

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 205
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f80

    const v3, 0x3dcccccd

    const/high16 v4, 0x3f80

    const v5, 0x3dcccccd

    const/4 v6, 0x1

    const/high16 v7, 0x3f00

    const/4 v8, 0x1

    const/high16 v9, 0x3f00

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 206
    .local v1, scaleIn:Landroid/view/animation/ScaleAnimation;
    int-to-long v2, v10

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 207
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomOutAnimation:Landroid/view/animation/AnimationSet;

    .line 208
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomOutAnimation:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 210
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomInAnimation:Landroid/view/animation/AnimationSet;

    .line 211
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 212
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mZoomInAnimation:Landroid/view/animation/AnimationSet;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    if-nez v2, :cond_0

    .line 214
    new-instance v2, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-direct {v2, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    .line 215
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-virtual {v2}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->start()V

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {p0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 219
    return-void
.end method

.method public onCallMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 630
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCount:I

    .line 632
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCount:I

    if-lez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissCallCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->cancel()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->cancel()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->hide()V

    .line 239
    :cond_1
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 642
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iput p2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    .line 644
    if-eqz p2, :cond_1

    .line 645
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    if-nez v0, :cond_0

    .line 646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->setChargeState(Z)V

    .line 647
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->show()V

    .line 648
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->setLevel(F)V

    .line 651
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->invalidate()V

    .line 652
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0, p1}, Lcom/baidu/internal/keyguard/slide/CharggingView;->updateLevel(I)V

    .line 662
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    if-eqz v0, :cond_2

    .line 655
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->setChargeState(Z)V

    .line 656
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->hide()V

    .line 657
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->setLevel(F)V

    .line 660
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBatteryLevelView:Lcom/baidu/internal/keyguard/slide/BatteryLevelView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/BatteryLevelView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    .line 224
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->t_arrowAnim:Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TargetView$GuideArrowAnimThread;->start()V

    .line 226
    :cond_0
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCharggingView:Lcom/baidu/internal/keyguard/slide/CharggingView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/CharggingView;->show()V

    .line 229
    :cond_1
    return-void
.end method

.method public onSmsMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 618
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCount:I

    .line 619
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCount:I

    if-lez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :goto_0
    return-void

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mMissMsgCountView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "v"
    .parameter "event"

    .prologue
    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 253
    .local v10, ea:I
    packed-switch v10, :pswitch_data_0

    .line 320
    :goto_0
    const/16 v16, 0x0

    return v16

    .line 255
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 256
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v11, v0, [I

    .line 257
    .local v11, location:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/baidu/internal/keyguard/slide/TargetView;->getLocationOnScreen([I)V

    .line 258
    const/16 v16, 0x0

    aget v16, v11, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenX:I

    .line 259
    const/16 v16, 0x1

    aget v16, v11, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenY:I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastX:I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetHandle:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastY:I

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 266
    .end local v11           #location:[I
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->ringIntersectProcess()V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    .line 272
    .local v12, tx:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    .line 273
    .local v13, ty:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mBgCicle:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v5, v16, 0x2

    .line 274
    .local v5, circleR:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenX:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v3, v16, v17

    .line 275
    .local v3, centerX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenY:I

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getHeight()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    add-int v4, v16, v17

    .line 276
    .local v4, centerY:I
    int-to-float v0, v3

    move/from16 v16, v0

    sub-float v16, v12, v16

    move/from16 v0, v16

    float-to-int v7, v0

    .line 277
    .local v7, distanceX:I
    int-to-float v0, v4

    move/from16 v16, v0

    sub-float v16, v13, v16

    move/from16 v0, v16

    float-to-int v8, v0

    .line 278
    .local v8, distanceY:I
    mul-int v16, v7, v7

    mul-int v17, v8, v8

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v6, v0

    .line 279
    .local v6, distance:F
    int-to-float v0, v5

    move/from16 v16, v0

    cmpg-float v16, v6, v16

    if-gtz v16, :cond_0

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v12, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v13, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 283
    :cond_0
    int-to-float v0, v3

    move/from16 v16, v0

    mul-int v17, v5, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v6

    add-float v14, v16, v17

    .line 284
    .local v14, x:F
    int-to-float v0, v4

    move/from16 v16, v0

    mul-int v17, v5, v8

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v6

    add-float v15, v16, v17

    .line 285
    .local v15, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mLocationOnScreenY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 291
    .end local v3           #centerX:I
    .end local v4           #centerY:I
    .end local v5           #circleR:I
    .end local v6           #distance:F
    .end local v7           #distanceX:I
    .end local v8           #distanceY:I
    .end local v12           #tx:F
    .end local v13           #ty:F
    .end local v14           #x:F
    .end local v15           #y:F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->startTargetIntentOrDismissKeyguard()Z

    move-result v16

    if-nez v16, :cond_2

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mPlugged:I

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateChargging:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 297
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastX:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mHandleLastY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    .line 295
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    goto :goto_1

    .line 301
    :cond_2
    :try_start_0
    new-instance v16, Landroid/os/Handler;

    invoke-direct/range {v16 .. v16}, Landroid/os/Handler;-><init>()V

    new-instance v17, Lcom/baidu/internal/keyguard/slide/TargetView$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$2;-><init>(Lcom/baidu/internal/keyguard/slide/TargetView;Landroid/view/View;)V

    const-wide/16 v18, 0xc8

    invoke-virtual/range {v16 .. v19}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 314
    :catch_0
    move-exception v9

    .line 315
    .local v9, e:Ljava/lang/Exception;
    const-string v16, "TargetHandlePanel"

    const-string v17, "set state to idle fail"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActivityLauncher(Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V
    .locals 0
    .parameter "activityLauncher"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 686
    return-void
.end method

.method public setChargeState(Z)V
    .locals 0
    .parameter "isChargging"

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    .line 674
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 599
    return-void
.end method

.method public setMusicPlayState(Z)V
    .locals 0
    .parameter "isPlaying"

    .prologue
    .line 669
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsMusicPlaying:Z

    .line 670
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    if-eq v1, p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 140
    .local v0, oldState:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TargetView$State;->leave()V

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    .line 144
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/slide/TargetView$State;->enter(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 146
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TargetView$State;->draw()V

    .line 148
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/slide/TargetView$State;
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/baidu/internal/keyguard/slide/TargetView$State;->obj:Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;Ljava/lang/Object;)V
    .locals 1
    .parameter "state"
    .parameter "obj"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setState(Lcom/baidu/internal/keyguard/slide/TargetView$State;)V

    .line 153
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    iput-object p2, v0, Lcom/baidu/internal/keyguard/slide/TargetView$State;->obj:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public setTargetCallback(Lcom/baidu/internal/keyguard/slide/TargetCallback;)V
    .locals 0
    .parameter "targetCallback"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    .line 666
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 602
    if-eqz p1, :cond_1

    .line 603
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mVibrator:Landroid/os/Vibrator;

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public showGuideArrow()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsChargging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mIsMusicPlaying:Z

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    const/4 v0, 0x0

    .line 680
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/TargetView$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mState:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/slide/TargetView$State;

    if-ne v0, v2, :cond_2

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    move v0, v7

    .line 171
    :goto_1
    return v0

    .line 161
    :catch_0
    move-exception v6

    .line 162
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "TargetHandlePanel"

    const-string v2, "startActivity fail:"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    move v0, v8

    .line 171
    goto :goto_1
.end method
